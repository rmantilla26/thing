json.array!(@relations) do |relation|
  json.extract! relation, :id, :thing, :related_to_thing_id
  json.url relation_url(relation, format: :json)
end
