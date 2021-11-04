json.array! @pins do |pin|
  json.extract! pin, :id, :title, :description, :user_id
  json.photoUrl url_for(pin.photo)
end

