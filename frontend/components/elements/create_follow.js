import { createFollow } from '../../utils/follow_api_util.js'

const Follow = (followerId, followedId) => {

  const follow = {
    follower_id: followerId, 
    followed_id: followedId, 
    created_at: new Date(),
  }

  createFollow(follow); 
}

export default Follow; 