class Addanswer < ActiveRecord::Migration
  def change
    add_column :cards, :guess, :string
  end
end
