json.array!(@cars) do |car|
  json.extract! car, :id, :make, :model, :HP
  json.url car_url(car, format: :json)
end
