import React from 'react'
import { Route, BrowserRouter, Switch } from 'react-router-dom'

import NetflixShowContainer from './NetflixShowContainer'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/netflix_shows/:id" component={NetflixShowContainer} />
      </Switch>
    </BrowserRouter>
  )
}

export default App

