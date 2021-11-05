json.extract! @pin, :id, :title, :description, :user_id
if @pin.photo.attached?
  json.photoUrl url_for(@pin.photo)
end