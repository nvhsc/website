class RemoveStatusFromSeasons < ActiveRecord::Migration
  def change
    remove_column :seasons, :status
  end
end
