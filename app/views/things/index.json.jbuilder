json.array!(@things) do |thing|
  json.extract! thing, :id, :name_en, :name_es
  json.url thing_url(thing, format: :json)
end
