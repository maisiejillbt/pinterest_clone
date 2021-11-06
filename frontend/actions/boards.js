export const RECEIVE_BOARDS = 'RECEIVE_BOARDS';
export const RECEIVE_BOARD = 'RECEIVE_BOARD';
export const REMOVE_BOARD = 'REMOVE_BOARD';

import * as BoardApiUtil from '../utils/board_api_util';


const receiveBoards = boards => ({
  type: RECEIVE_BOARDS,
  boards
});

const receiveBoard = board => ({
  type: RECEIVE_BOARD,
  board
});

const removeBoard = boardId => ({
  type:REMOVE_BOARD, 
  boardId
})

export const fetchUserBoards = () => dispatch => {
  return BoardApiUtil.fetchUserBoards()
    .then(boards => dispatch(receiveBoards(boards)));
}

export const fetchBoard = boardId => dispatch => {
  return BoardApiUtil.fetchBoard(boardId)
    .then(board => dispatch(receiveBoard(board)));
}

export const createBoard = board => dispatch => {
  return BoardApiUtil.createBoard(board)
    .then(board => dispatch(receiveBoards(board)));
}

export const updateBoard = board => dispatch => {
  return BoardApiUtil.updateBoard(board)
    .then(board => dispatch(receiveBoard(board)));
}

export const deleteBoard = boardId => dispatch => {
  return BoardApiUtil.deleteBoard(boardId)
    .then(() => dispatch(removeBoard(boardId)));
}
