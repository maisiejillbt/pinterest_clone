import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  let store;

  if (window.current_user) { /// need to adjust current_user to the right naming conventions in frontend
        const preloadedState = {
          session: { 
            current_user: window.current_user 
          }
        };
        store = configureStore(preloadedState);
        delete window.current_user;
  } else {
      store = configureStore();
  }
  

  ReactDOM.render(<Root store={store}/>, root);
});