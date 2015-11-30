json.array!(@events) do |event|
  json.extract! event, :id, :name, :location, :date, :user_participating
  json.url event_url(event, format: :json)
end
