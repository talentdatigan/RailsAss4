class Profile < ApplicationRecord
  belongs_to :addresses
  belongs_to :credit_cards
end
