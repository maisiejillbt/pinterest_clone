export const RECEIVE_FOLLOW = 'RECEIVE_SAVE';
export const REMOVE_FOLLOW = 'REMOVE_FOLLOW';

import * as FollowApiUtil from '../utils/follow_api_util';


const receiveFollow = follow => ({
  type: RECEIVE_FOLLOW,
  follow
});

const removeFollow = followId => ({
  type:REMOVE_FOLLOW, 
  followId
})

export const createFollow = follow => dispatch => {
  return FollowApiUtil.createFollow(follow)
    .then(follow => dispatch(receiveFollow(follow)));
}

export const deleteFollow = followId => dispatch => {
  return SaveApiUtil.deleteFollow(followId)
    .then(() => dispatch(removeFollow(followId)));
}
