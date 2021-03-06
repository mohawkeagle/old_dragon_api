class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills, id: :bigint do |t|
      t.string   :name,          limit: 45
      t.string   :description,   limit: 500
      t.integer  :effect_id,     limit: 8
      t.integer  :skill_type_id, limit: 8,   null: false
      t.integer  :user_id,       limit: 8,   null: false
      t.timestamps null: false
    end

    add_index :skills, [:effect_id], using: :btree
    add_index :skills, [:skill_type_id], using: :btree
    add_index :skills, [:user_id], using: :btree
  end
end
