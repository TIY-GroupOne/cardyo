class Card < ActiveRecord::Base
  belongs_to :decks
  has_many :guesses
end
