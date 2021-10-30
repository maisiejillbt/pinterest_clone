import React from 'react';
import { Route, Switch } from 'react-router-dom';
import Test from './home/test';
import SignupContainer from './session/signup_container'

export default () => (
  <div>
    <Switch>
      <Route path="/signup" component={SignupContainer}/> 
      <Route path="/" component={Test}/>   
    </Switch>
  </div>
);