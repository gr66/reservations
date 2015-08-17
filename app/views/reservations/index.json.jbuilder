json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :start, :end, :room_type, :user_id, :room_id
  json.url reservation_url(reservation, format: :json)
end
