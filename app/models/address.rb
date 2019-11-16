class Address < ApplicationRecord
  belongs_to :user
  validates :street, :city, :postcode, presence: true
end
