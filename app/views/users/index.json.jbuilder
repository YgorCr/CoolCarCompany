json.array!(@users) do |user|
  json.extract! user, :id, :name, :adress, :paymentInfo
  json.url user_url(user, format: :json)
end
