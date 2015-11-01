json.array!(@events) do |event|
  json.extract! event, :id, :title, :location, :description, :time, :weather
  json.url event_url(event, format: :json)
end
