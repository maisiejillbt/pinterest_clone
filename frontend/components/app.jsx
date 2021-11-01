import React from 'react';
import { Route, Switch } from 'react-router-dom';
import JackBlack from './home/test';
import SignupContainer from './session/signup_container'
import LoginContainer from './session/login_container'

import NavBarContainer from './nav_bar/nav_bar_container.jsx'
import { AuthRoute } from '../utils/routes_utils'


export default () => (
  <div>
    <Switch>
      <Route exact path="/" component={NavBarContainer}/> 
      <Route path="/jackblack" component={JackBlack}/>   
      <AuthRoute path="/signup" component={SignupContainer}/> 
      <AuthRoute path="/login" component={LoginContainer} />
    </Switch>
  </div>
);