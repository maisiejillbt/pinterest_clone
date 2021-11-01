import React from 'react';
import { Route, Switch } from 'react-router-dom';
import Test from './home/test';
import SignupContainer from './session/signup_container'
import NavBarContainer from './nav_bar/nav_bar_container.jsx'
import { AuthRoute } from '../utils/routes_utils'

export default () => (
  <div>
    <Switch>
      <AuthRoute path="/signup" component={SignupContainer}/> 
      <Route path="/" component={NavBarContainer}/>   
    </Switch>
  </div>
);