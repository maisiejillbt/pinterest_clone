import { combineReducers } from 'redux';
import PinsReducer from './pin_reducer.js'
import BoardsReducer from './board_reducer.js'
import UsersReducer from './user_reducer.js'

export default combineReducers({
  pins: PinsReducer,
  boards: BoardsReducer,
  users: UsersReducer
});
