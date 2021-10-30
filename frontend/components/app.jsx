import React from 'react';
import { Route } from 'react-router-dom';
import Test from './home/test';

export default () => (
  <div>
    <Route exact path="/" component={Test} />
  </div>
);