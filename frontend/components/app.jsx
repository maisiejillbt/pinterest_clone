import React from 'react';
import { Route, Switch } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../utils/routes_utils'

import LandingPage from './home/landing_page'
import NavBarProtectedContainer from './nav_bar/nav_bar_protected_container'

import LoginContainer from './session/login_container'
import SignupContainer from './session/signup_container'

import PinShowContainer from './pins/pin_show_container'
import PinIndexContainer from './pins/pins_container'
import UpdateBoardForm from './boards/update_board_form_container'
import UpdatePinForm from './pins/update_pin_form_container'
import BoardShowContainer from './boards/board_show_container'
import UserShowContainer from './users/user_show_container'
import CreatePinForm from './pins/create_pin_form_container'
import CreateBoardForm from './boards/create_board_form_container'


export default () => (
  <div>
    <AuthRoute path="/landing" component={LandingPage}/> 
    <ProtectedRoute path="/" component={NavBarProtectedContainer}/> 

    <Switch>
      <AuthRoute exact path="/landing/login" component={LoginContainer} />
      <AuthRoute exact path="/landing/signup" component={SignupContainer}/> 
      <ProtectedRoute exact path='/pins/:pinId' component={PinShowContainer}/>
      <ProtectedRoute exact path="/pins" component={PinIndexContainer}/>
      <ProtectedRoute path='/boards/:boardId/edit' component={UpdateBoardForm}/>
      <ProtectedRoute exact path='/pins/:pinId/edit' component={UpdatePinForm}/>
      <ProtectedRoute path='/boards/:boardId' component={BoardShowContainer}/>
      <ProtectedRoute path='/users/:userId' component={UserShowContainer}/>
      <ProtectedRoute path='/create-pin' component={CreatePinForm}/>
      <ProtectedRoute path='/create-board' component={CreateBoardForm}/>
     </Switch> 
  </div>
);