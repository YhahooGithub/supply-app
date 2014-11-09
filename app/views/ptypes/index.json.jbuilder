json.array!(@ptypes) do |ptype|
  json.extract! ptype, :id, :name, :description
  json.url ptype_url(ptype, format: :json)
end
