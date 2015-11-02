json.array!(@hikes) do |hike|
  json.extract! hike, :id
  json.url hike_url(hike, format: :json)
end
