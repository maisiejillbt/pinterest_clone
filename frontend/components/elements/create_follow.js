import { createFollow } from '../../utils/save_api_util.js'


const Follow = (followerId, followedId) => {

  const follow = {
    follower_id: pinId, 
    followed_id: boardId, 
    created_at: new Date(),
  }

  createFollow(follow); 
}

export default Follow; 