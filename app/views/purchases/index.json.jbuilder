json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :name, :description, :delivered_at
  json.url purchase_url(purchase, format: :json)
end
