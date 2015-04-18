class AddSportToSeasons < ActiveRecord::Migration
  def change
    change_table :seasons do |t|
      t.references :sport
    end
    
    add_index :seasons, :sport_id
  end
end
