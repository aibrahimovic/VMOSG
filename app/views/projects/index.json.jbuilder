json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :start, :end, :image
  json.url project_url(project, format: :json)
end
