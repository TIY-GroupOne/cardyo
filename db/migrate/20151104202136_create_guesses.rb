class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :userid
      t.integer :cardid
      t.float :duration
      t.boolean :correct

      t.timestamps null: false
    end
  end
end
