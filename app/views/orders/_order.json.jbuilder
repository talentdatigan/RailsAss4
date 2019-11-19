json.extract! order,  :price, :street, :city, :postcode, :card_no, :exp_date, :name_on_card, :organisation,:pokedex_id, :created_at, :updated_at
json.url order_url(order, format: :json)
