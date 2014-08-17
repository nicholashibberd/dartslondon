json.array!(@pubs) do |pub|
  json.extract! pub, :id, :name, :description
  json.url pub_url(pub, format: :json)
end
