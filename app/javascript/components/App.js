// app/javascript/components/App.js
import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Greeting from './Greeting';
import { Provider } from 'react-redux';
import { store } from '../redux/store';

const App = () => {
  return (
    <Provider store={store}>
      <Router>
        <Switch>
          <Route exact path="/" component={Greeting} />
          {/* Add more routes if needed */}
        </Switch>
      </Router>
    </Provider>
  );
};

export default App;
