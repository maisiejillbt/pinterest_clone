export const RECEIVE_FOLLOW = 'RECEIVE_FOLLOW';
export const RECEIVE_FOLLOWS = 'RECEIVE_FOLLOWS';
export const REMOVE_FOLLOW = 'REMOVE_FOLLOW';

import * as FollowApiUtil from '../utils/follow_api_util';


const receiveFollow = follow => ({
  type: RECEIVE_FOLLOW,
  follow
});

const receiveFollows = follows => ({
  type: RECEIVE_FOLLOWS,
  follows
});

const removeFollow = followId => ({
  type:REMOVE_FOLLOW, 
  followId
});

export const fetchFollows = () => dispatch => {
  return FollowApiUtil.fetchFollows()
    .then(follows => dispatch(receiveFollows(follows)));
}

export const createFollow = follow => dispatch => {
  return FollowApiUtil.createFollow(follow)
    .then(follow => dispatch(receiveFollow(follow)));
}

export const deleteFollow = followId => dispatch => {
  return FollowApiUtil.deleteFollow(followId)
    .then(() => dispatch(removeFollow(followId)));
}
