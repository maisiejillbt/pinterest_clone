import { combineReducers } from "redux";
import sessionErrorReducer from "./session_error_reducer";
// import pinErrorReducer from "./pin_error_reducer";


const errorsReducer = combineReducers({
    session: sessionErrorReducer, 
    // pin: pinErrorReducer,
    // create errors 
    // edit errors 
});

export default errorsReducer;