import { combineReducers } from 'redux';
import entitiesReducer from './entities_reducer';
import sessionReducer from './session_reducer';
import errorReducer from './error_reducers/error_reducer';


export default combineReducers({
  session: sessionReducer, 
  entities: entitiesReducer,
  errors: errorReducer,
});
