json.extract! profile, :id, :addresses_id, :credit_cards_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
