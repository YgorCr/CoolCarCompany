json.array!(@shop_carts) do |shop_cart|
  json.extract! shop_cart, :id, :user_id, :total
  json.url shop_cart_url(shop_cart, format: :json)
end
