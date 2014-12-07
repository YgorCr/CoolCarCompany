json.array!(@vechicles) do |vechicle|
  json.extract! vechicle, :id, :name, :number, :design, :year, :price, :availability
  json.url vechicle_url(vechicle, format: :json)
end
