
json.board do  
  json.id board.id 
  json.name board.name 
  json.description board.description
  json.public board.public 
  json.user_id board.user_id
  json.pins board.pins do |pin|
    json.id pin.id
    json.title pin.title 
    json.description pin.description
    json.created_at pin.created_at
    json.photo pin.photo.attached? ? url_for(pin.photo) : nil
  end
end 


# :id, :name, :description, :public, :user_id, :pins





# json.extract! board, :id, :name, :description, :public, :user_id, :pins
