class Order < ApplicationRecord
  belongs_to :address
  belongs_to :credit_card
  belongs_to :user
  belongs_to :pokedex
  validates  :street, :city, :postcode, :card_no, :exp_date, :name_on_card, :organisation, :user_id, :pokedex_id, presence: true
end
