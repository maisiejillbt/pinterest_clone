json.extract! @user, :username, :id, :name, :email, :bio, :pronouns
if @user.photo.attached?
  json.photoUrl url_for(@user.photo)
end