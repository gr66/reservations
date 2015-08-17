json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :stars, :rooms_id
  json.url hotel_url(hotel, format: :json)
end
