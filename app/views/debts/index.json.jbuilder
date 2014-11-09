json.array!(@debts) do |debt|
  json.extract! debt, :id, :name, :remark
  json.url debt_url(debt, format: :json)
end
