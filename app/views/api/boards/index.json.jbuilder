json.array! @boards do |board|
  # debugger
  json.partial! 'api/boards/board', board: board #if (board[user_id] == @user)
  
end