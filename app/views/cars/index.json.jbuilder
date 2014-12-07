json.array!(@cars) do |car|
  json.extract! car, :id, :name, :make, :model, :year, :availability
  json.url car_url(car, format: :json)
end
