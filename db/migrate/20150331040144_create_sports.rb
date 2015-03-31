class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.attachment :icon, null: false
      t.timestamps null: false
    end
  end
end
