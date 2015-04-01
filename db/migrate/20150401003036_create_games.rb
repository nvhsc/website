class CreateGames < ActiveRecord::Migration
  def change
    rename_column :events, :event_type, :type
    change_column :events, :type, :string, null: true
    add_column :events, :tournament_id, :integer
    add_index :events, :tournament_id
  end
end
