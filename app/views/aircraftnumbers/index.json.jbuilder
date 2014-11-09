json.array!(@aircraftnumbers) do |aircraftnumber|
  json.extract! aircraftnumber, :id, :rtafnumber, :acnumber, :sqnumber
  json.url aircraftnumber_url(aircraftnumber, format: :json)
end
