class CreateCampaignWikiPages < ActiveRecord::Migration
  def change
    create_table :campaign_wiki_pages, id: :bigint do |t|
      t.string  :title,       limit: 45,    null: false
      t.string  :wiki_name,   limit: 100,   null: false
      t.text    :body,        limit: 65535
      t.string  :picture,     limit: 300
      t.integer :campaign_id, limit: 8,     null: false

      t.timestamps null: false
    end
    add_index :campaign_wiki_pages, [:campaign_id], using: :btree
  end
end