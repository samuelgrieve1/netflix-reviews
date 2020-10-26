import React from 'react'
import { Route, Switch, BrowserRouter } from "react-router-dom";

import NetflixIndexContainer from "./NetflixIndexContainer"
import NetflixShowContainer from './NetflixShowContainer'
import ReviewFormContainer from './ReviewFormContainer'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={NetflixIndexContainer}/>
        <Route exact path="/netflix_shows" component={NetflixIndexContainer} />
        <Route exact path="/netflix_shows/:id" component={NetflixShowContainer} />
      </Switch>
    </BrowserRouter>
  )
}

export default App
