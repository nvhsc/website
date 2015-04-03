class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
    	t.references :team, null: false
    	t.references :player, null: false
    	t.string :role, null: false
      t.timestamps null: false
    end
  end
end
