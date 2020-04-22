import React from 'react';
import './App.css';
import Wrap from './View/Wrap'
import { BrowserRouter as Router, Route } from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import { Provider } from 'react-redux';
import store from './Redux/store';
import Login from "./Pages/Login";


function App() {
  return (
    <Provider store={store}>
      <Router>
        <Route exact path='/' render={props => <Wrap {...props} title='Dashboard' />} />
        <Route path='/setting/:id' render={props => <Wrap {...props} title='Setting' />} />
        <Route path='/addUser' render={props => <Wrap {...props} title='Add User' />} />
        <Route path='/login' render={props => <Login {...props} title='Add User' />} />
      </Router>
    </Provider>
  );
}

export default App;
