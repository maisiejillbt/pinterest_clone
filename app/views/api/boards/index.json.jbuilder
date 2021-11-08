@boards.each do |board|
  json.partial! 'api/boards/board', board: board #if (board[user_id] == @user)
end