json.set! user.id do 
  json.username user.username 
  json.bio user.bio 
  json.pronouns user.pronouns
  json.boards user.boards do |board|
      json.partial! 'api/boards/board', board: board
  end
  if @user.photo.attached?
    json.photoUrl url_for(@user.photo)
  end
end 