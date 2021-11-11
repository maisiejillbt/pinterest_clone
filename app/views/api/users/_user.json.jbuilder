
json.id user.id
json.username user.username 
json.name user.name 
json.bio user.bio 
json.pronouns user.pronouns
json.following user.following
json.followers user.followers

json.boards user.boards do |board|
    json.partial! 'api/boards/board', board: board
end
if @user.photo.attached?
  json.photoUrl url_for(@user.photo)
end
