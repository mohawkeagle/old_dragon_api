# == Schema Information
#
# Table name: armors
#
#  id                 :integer          not null, primary key
#  name               :string(45)       not null
#  description        :string(500)
#  armor_class        :integer          default("0"), not null
#  movement_reduction :integer          default("0")
#  price              :decimal(10, )    default("0"), not null
#  alignment_id       :integer          not null
#  armor_type_id      :integer          not null
#  origin_id          :integer          not null
#  user_id            :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class ArmorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
