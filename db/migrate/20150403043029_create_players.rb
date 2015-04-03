class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :first_name, null: false
    	t.string :middle_name
    	t.string :last_name, null: false
    	t.string :gender
    	t.date :birthdate
    	t.attachment :avatar
      t.timestamps null: false
    end
  end
end
