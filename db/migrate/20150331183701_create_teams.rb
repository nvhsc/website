class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.attachment :icon, null: false
      t.references :division, null: false
      t.references :season, null: false
      t.timestamps null: false
    end
  end
end
