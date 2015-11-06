class Fixeditforrealthistime < ActiveRecord::Migration
  def change
    remove_column :cards, :guess
    add_column :guesses, :guess, :string
  end
end
