json.data do
  json.array! @lists do |list|
    json.extract! list, :id
    json.type "list"
    json.attributes do
      json.extract! list, :title, :description
      json.url list_url(list, format: :json)
    end
  end
end
