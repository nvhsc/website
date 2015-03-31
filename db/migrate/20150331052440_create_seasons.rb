class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name, null: false
      t.string :status, null: false, default: :upcoming
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.timestamps null: false
    end
  end
end
