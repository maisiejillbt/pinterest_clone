import React from 'react';
import { Route, Switch } from 'react-router-dom';
import JackBlack from './home/test';
import SignupContainer from './session/signup_container'
import LoginContainer from './session/login_container'
import CreatePinForm from './pins/create_pin_form_container'
import CreateBoardForm from './boards/create_board_form_container'
import UpdateBoardForm from './boards/update_board_form_container'
import UpdatePinForm from './pins/update_pin_form_container'
import PinIndexContainer from './pins/pins_container'
import PinShowContainer from './pins/pin_show_container'
import BoardContainer from './boards/board_index_container'
import BoardShowContainer from './boards/board_show_container'
import LandingPage from './home/landing_page'
import UserShowContainer from './users/user_show_container'

import NavBarAuthContainer from './nav_bar/nav_bar_auth_container'
import NavBarProtectedContainer from './nav_bar/nav_bar_protected_container'

import { AuthRoute, ProtectedRoute } from '../utils/routes_utils'


export default () => (
  <div>
    <AuthRoute path="/" component={NavBarAuthContainer}/> 
    <AuthRoute exact path="/" component={LandingPage}/> 

    <Switch>
      <AuthRoute exact path="/login" component={LoginContainer} />
      <AuthRoute exact path="/signup" component={SignupContainer}/> 
    </Switch>

    <ProtectedRoute path="/" component={NavBarProtectedContainer}/> 

    <Switch>
      <ProtectedRoute path="/pins" component={PinIndexContainer}/>
      <ProtectedRoute exact path='/pins/:pinId' component={PinShowContainer}/>
      <ProtectedRoute path='/boards/:boardId/edit' component={UpdateBoardForm}/>
      <ProtectedRoute exact path='/pins/:pinId/edit' component={UpdatePinForm}/>
      <ProtectedRoute path='/boards/:boardId' component={BoardShowContainer}/>
      <ProtectedRoute path='/users/:userId' component={UserShowContainer}/>
      <ProtectedRoute path='/create-pin' component={CreatePinForm}/>
      <ProtectedRoute path='/create-board' component={CreateBoardForm}/>
     </Switch>
    <Route path="/jackblack" component={JackBlack}/>   
  </div>
);