class CreateCharacterClassSpecializations < ActiveRecord::Migration
  def change
create_table :character_class_specializations, id: :bigint do |t|
      t.string   :name,               limit: 45,             null: false
      t.string   :description,        limit: 500,            null: false
      t.integer  :min_level,          limit: 4,  default: 1, null: false
      t.integer  :character_class_id, limit: 8,              null: false
      t.timestamps null: false
    end

    add_index :character_class_specializations, [:character_class_id], using: :btree
  end
end
