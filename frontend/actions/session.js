import {
  postUser,
  postSession,
  deleteSession
} from '../utils/session';

export const RECEIVE_CURRENT_USER = `RECEIVE_CURRENT_USER`;
export const LOGOUT_CURRENT_USER = `LOGOUT_CURRENT_USER`;
export const RECEIVE_SESSION_ERRORS = `RECEIVE_SESSION_ERRORS`;
export const REMOVE_SESSION_ERRORS = `REMOVE_SESSION_ERRORS`; 

const receiveCurrentUser = user => ({
  type:RECEIVE_CURRENT_USER,
  user,
});

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER,
});

const receiveErrors = errors => ({
    type: RECEIVE_SESSION_ERRORS,
    errors
});

const removeErrors = errors => ({
    type: REMOVE_SESSION_ERRORS
});

export const createNewUser = formUser => dispatch => (
  postUser(formUser).then(
    user => 
      dispatch(receiveCurrentUser(user)), 
    err => 
      dispatch(receiveErrors(err.responseJSON))
  )
);

export const loginUser = formUser => dispatch => (
  postSession(formUser).then(
    user => 
      dispatch(receiveCurrentUser(user)),
    err => 
      dispatch(receiveErrors(err.responseJSON))
  )
);

export const logoutUser = () => dispatch => deleteSession() 
  .then(() => dispatch(logoutCurrentUser())); 


