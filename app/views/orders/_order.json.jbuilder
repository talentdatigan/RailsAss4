json.extract! order, :id, :price, :street, :city, :postcode, :card_no, :exp_date, :name_on_card, :organisation, :address_id, :credit_card_id, :user_id, :pokedex_id, :created_at, :updated_at
json.url order_url(order, format: :json)
