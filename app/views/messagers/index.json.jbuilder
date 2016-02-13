json.array!(@messagers) do |messager|
  json.extract! messager, :id
  json.url messager_url(messager, format: :json)
end
