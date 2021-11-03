import { combineReducers } from 'redux';
import PinsReducer from './pin_reducer.js'


export default combineReducers({
  pins: PinsReducer,
  boards: BoardsReducer
});
