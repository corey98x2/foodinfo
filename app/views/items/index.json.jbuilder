json.array!(@items) do |item|
  json.extract! item, :id, :name, :image_url, :place, :price, :special, :rating, :user, :date
  json.url item_url(item, format: :json)
end
