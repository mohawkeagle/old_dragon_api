class CreateCharacterAttributes < ActiveRecord::Migration
  def change
    create_table :character_attributes, id: :bigint do |t|
      t.integer  :strength,     limit: 4, default: 0,    null: false
      t.integer  :dexterity,    limit: 4, default: 0,    null: false
      t.integer  :constitution, limit: 4, default: 0,    null: false
      t.integer  :intelligence, limit: 4, default: 0,    null: false
      t.integer  :wisdom,       limit: 4, default: 0,    null: false
      t.integer  :charisma,     limit: 4, default: 0,    null: false
      t.integer  :character_id, limit: 8,                null: false
      t.timestamps null: false
    end

    add_index :character_attributes, [:strength],     using: :btree
    add_index :character_attributes, [:dexterity],    using: :btree
    add_index :character_attributes, [:constitution], using: :btree
    add_index :character_attributes, [:intelligence], using: :btree
    add_index :character_attributes, [:wisdom],       using: :btree
    add_index :character_attributes, [:charisma],     using: :btree
    add_index :character_attributes, [:character_id], using: :btree
    add_index :character_attributes, [:character_id], unique: true, name: 'character_attributes_character_uk'
  end
end
