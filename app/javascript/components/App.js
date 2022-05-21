import React from "react"
import PropTypes from "prop-types"
import {
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'
import Header from './components/Header'

class App extends React.Component {
  render() {
    return (
      <Router>
        <Header {...this.props} />
        <h1>Yo!</h1>
      </Router>
    );
  }
}

export default App
