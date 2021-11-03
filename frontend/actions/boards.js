export const RECEIVE_BOARDS = 'RECEIVE_BOARDS';
export const RECEIVE_BOARD = 'RECEIVE_BOARD';
export const REMOVE_BOARD = 'REMOVE_BOARD';

import { fetchBoards, fetchBoard, createBoard, updateBoard, deleteBoard } from '../utils/board_api_util';


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

export const fetchBoards = () => dispatch => {
  return fetchBoards()
    .then(boards => dispatch(receiveBoards(boards)));
}

export const fetchBoard = boardId => dispatch => {
  return fetchBoard()
    .then(board => dispatch(receiveBoard(board)));
}

export const createBoard = board => dispatch => {
  return creeateBoard(board)
    .then(board => dispatch(receiveBoards(board)));
}

export const updateBoard = board => dispatch => {
  return updtateBoard(board)
    .then(board => dispatch(receiveBoard(board)));
}

export const deleteBoard = boardId => dispatch => {
  return deleteBoard(boardId)
    .then(() => dispatch(removeBoard(boardId)));
}
