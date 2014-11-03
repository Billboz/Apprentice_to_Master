json.array!(@apprentices) do |apprentice|
  json.extract! apprentice, :id, :name, :city, :master_name, :master_id
  json.url apprentice_url(apprentice, format: :json)
end
