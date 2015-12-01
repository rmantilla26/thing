json.array!(@app_things) do |app_thing|
  json.extract! app_thing, :id, :app_id, :thing_id
  json.url app_thing_url(app_thing, format: :json)
end
