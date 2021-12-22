import { combineReducers } from "redux";
import sessionErrorReducer from "./session_error_reducer";

const errorsReducer = combineReducers({
    session: sessionErrorReducer, 
    // create errors 
    // edit errors 
});

export default errorsReducer;