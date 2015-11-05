class Fixids < ActiveRecord::Migration
  def change
    rename_column :decks, :userid, :user_id
    rename_column :cards, :deckid, :deck_id
    rename_column :guesses, :cardid, :card_id
    rename_column :guesses, :userid, :user_id
  end
end
