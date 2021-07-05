json.extract! product, :id, :name, :price, :material, :size, :color, :created_at, :updated_at
json.url product_url(product, format: :json)
