json.array!(@news) do |news|
  json.extract! news, :id, :name, :description
  json.url news_url(news, format: :json)
end
