import React, { Compoonent } from 'react';

class App extends Component {
  state = { beers: [] }

  componentDidMount() {
    // Make a call to rails server
  }

  addBeer = (name, style, brewery) => {
    // make api call to rails server to add beer
    // update state
  }

  updateBeer = (id) => {
    // Make api call to update beer 
    // update state
  }

  deleteBeer = (id) => {
    // Make api call to delete todo
    // remove it from state
  }

  render() {
    return (
      <div className="container">
      <BeerList addBeer={this.addBeer}>
    )
  }
}