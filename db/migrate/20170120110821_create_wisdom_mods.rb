class CreateWisdomMods < ActiveRecord::Migration
  def change
    create_table :wisdom_mods, id: :bigint do |t|
      t.integer  :value,             limit: 4,             null: false
      t.integer  :protection_mod,    limit: 4, default: 0, null: false
      t.integer  :magic_cicle_1_mod, limit: 4, default: 0, null: false
      t.integer  :magic_cicle_2_mod, limit: 4, default: 0, null: false
      t.integer  :magic_cicle_3_mod, limit: 4, default: 0, null: false
      t.timestamps null: false
    end
  end
end
