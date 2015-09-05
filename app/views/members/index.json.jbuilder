json.array!(@members) do |member|
  json.extract! member, :id, :name, :description, :web, :phone, :image
  json.url member_url(member, format: :json)
end
