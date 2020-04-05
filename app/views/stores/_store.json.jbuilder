json.extract! store, :id, :name, :street, :number, :zipcode, :city_id, :country_id, :created_at, :updated_at
json.url store_url(store, format: :json)
