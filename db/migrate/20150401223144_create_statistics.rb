class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.string :type
      t.time :game_time
      t.time :penalty_duration
      t.string :penalty_name
      t.boolean :pickup, default: false
      t.references :game, null: false
      t.timestamps null: false
    end
  end
end
