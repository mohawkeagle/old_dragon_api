# == Schema Information
#
# Table name: wiki_categories
#
#  id         :integer          not null, primary key
#  title      :string(45)       not null
#  wiki_name  :string(100)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WikiCategory < ActiveRecord::Base
  before_save :generate_wiki_name, only: [:create, :update]
  has_many :pages, class_name: 'CampaignWikiPage'

  def generate_wiki_name
    wiki_name = self.title.unicode_normalize(:nfkd).encode('ASCII', replace: '')
    self.wiki_name = wiki_name.strip.downcase.gsub(' ', '_')
  end
end