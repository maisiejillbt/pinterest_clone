import React from 'react';
import { Route, Switch } from 'react-router-dom';
import JackBlack from './home/test';
import SignupContainer from './session/signup_container'
import LoginContainer from './session/login_container'
import CreatePinForm from './pins/create_pin_form_container.jsx'
import CreateBoardForm from './boards/create_board_form_container.jsx'
import UpdateBoardForm from './boards/update_board_form_container.jsx'
import UpdatePinForm from './pins/update_pin_form_container.jsx'
import PinContainer from './pins/pins_container.jsx'
import PinShowContainer from './pins/pin_show_container.jsx'
import BoardContainer from './boards/board_index_container.jsx'
import BoardShowContainer from './boards/board_show_container.jsx'
import LandingPage from './home/landing_page.jsx'
import UserShowContainer from './users/user_show_container.jsx'

import NavBarContainer from './nav_bar/nav_bar_container.jsx'
import { AuthRoute } from '../utils/routes_utils'


export default () => (
  <div>
    <Route path="/" component={NavBarContainer}/> 
    
    <AuthRoute path="/" component={LandingPage}/> 
    <AuthRoute path="/signup" component={SignupContainer}/> 
    <AuthRoute path="/login" component={LoginContainer} />

    <Route path='/create-pin' component={CreatePinForm}/>
    <Route path='/create-board' component={CreateBoardForm}/>

    <Route exact path='/pins' component={PinContainer}/>

    <Route exact path='/pins/:pinId' component={PinShowContainer}/>
    
    <Route path='/pins/:pinId/edit' component={UpdatePinForm}/>
  
    <Route path='/boards/:boardId' component={BoardShowContainer}/>
    <Route path='/boards/:boardId/edit' component={UpdateBoardForm}/>

    <Route path='/users/:userId' component={UserShowContainer}/>

    <Route path="/jackblack" component={JackBlack}/>   
  </div>
);