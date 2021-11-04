json.array! @pins do |pin|
  json.extract! pin, :id, :title, :description, :user_id, :photo
  if pin.photo.attached?
    json.photoUrl url_for(pin.photo)
  end
end

