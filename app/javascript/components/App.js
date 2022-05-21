import React from "react"
import PropTypes from "prop-types"
import {
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'
import Header from './components/Header'

class App extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      apartments: []
    }
  }

  componentDidMount() {
    this.readApartment()
  }

  readApartment = () => {
    fetch('/apartments')
      .then(response => response.json())
      .then(payload => this.setState({ apartments: payload }))
      .catch(errors => console.log('Apartment read errors: ', errors))

  }
  render() {
    console.log(this.state)
    return (
      <Router>
        <Header {...this.props} />
        <h1>Yo!</h1>
      </Router>
    );
  }
}

export default App
