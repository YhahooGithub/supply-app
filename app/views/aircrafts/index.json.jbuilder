json.array!(@aircrafts) do |aircraft|
  json.extract! aircraft, :id, :name, :actype
  json.url aircraft_url(aircraft, format: :json)
end
