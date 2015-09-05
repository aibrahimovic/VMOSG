json.array!(@infos) do |info|
  json.extract! info, :id, :name, :description
  json.url info_url(info, format: :json)
end
