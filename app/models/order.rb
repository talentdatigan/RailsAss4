class Order < ApplicationRecord
  belongs_to :address
  belongs_to :credit_card
  belongs_to :user
  belongs_to :pokedex
end
