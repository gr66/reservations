json.array!(@rooms) do |room|
  json.extract! room, :id, :number, :size
  json.url room_url(room, format: :json)
end
