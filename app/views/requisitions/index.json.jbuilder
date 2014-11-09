json.array!(@requisitions) do |requisition|
  json.extract! requisition, :id, :name, :description, :delivery_request
  json.url requisition_url(requisition, format: :json)
end
