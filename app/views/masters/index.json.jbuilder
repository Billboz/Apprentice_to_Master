json.array!(@masters) do |master|
  json.extract! master, :id, :name, :domain, :city, :state
  json.url master_url(master, format: :json)
end
