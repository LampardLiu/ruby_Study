json.array!(@produces) do |produce|
  json.extract! produce, :id, :title, :description, :image_url, :price
  json.url produce_url(produce, format: :json)
end
