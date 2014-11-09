json.array!(@squadrons) do |squadron|
  json.extract! squadron, :id, :sq, :contact_name, :contact_number
  json.url squadron_url(squadron, format: :json)
end
