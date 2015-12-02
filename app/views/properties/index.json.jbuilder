json.array!(@properties) do |property|
  json.extract! property, :id, :name, :thing_id, :type_id
  json.url property_url(property, format: :json)
end
