json.array!(@sq_acs) do |sq_ac|
  json.extract! sq_ac, :id, :squadron_id, :aircraft_id, :quantity
  json.url sq_ac_url(sq_ac, format: :json)
end
