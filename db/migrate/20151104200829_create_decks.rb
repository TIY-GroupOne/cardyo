class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.integer :userid
      t.string :title

      t.timestamps null: false
    end
  end
end
