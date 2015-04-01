class RenameSeasonStartAndEndDates < ActiveRecord::Migration
  def change
    rename_column :seasons, :start_date, :start_at
    rename_column :seasons, :end_date, :end_at
  end
end
