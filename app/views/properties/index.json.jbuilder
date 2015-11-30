json.array!(@properties) do |property|
  json.extract! property, :id, :name_en, :name_es, :thing_id, :type_id
  json.url property_url(property, format: :json)
end
