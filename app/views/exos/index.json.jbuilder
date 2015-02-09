json.array!(@exos) do |exo|
  json.extract! exo, :id, :PrdName, :OwnerName
  json.url exo_url(exo, format: :json)
end
