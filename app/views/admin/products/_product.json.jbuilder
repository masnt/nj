json.extract! product, :id, :product_name, :artist, :stock_quantity, :recieve_quantity, :product_text, :product_status, :unit_price, :created_at, :updated_at
json.url product_url(product, format: :json)
