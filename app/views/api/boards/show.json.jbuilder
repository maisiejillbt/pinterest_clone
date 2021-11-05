# json.partial! 'api/boards/board', board: @board

json.extract! @board, :id, :name, :description, :public, :user_id, :pins