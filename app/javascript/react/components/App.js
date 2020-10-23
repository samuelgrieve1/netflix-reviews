import React from 'react'
import { Route, Switch, BrowserRouter } from "react-router-dom";

import NetflixIndexContainer from "./NetflixIndexContainer"
import NetflixShowContainer from './NetflixShowContainer'
import NetflixFormContainer from './NetflixFormContainer'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={NetflixIndexContainer}/>
        <Route exact path="/netflix_shows" component={NetflixIndexContainer} />
        <Route exact path="/netflix_shows/:id" component={NetflixShowContainer} />
        <Route exact path="/netflix_shows/:id/add_review" component={NetflixFormContainer} />
      </Switch>
    </BrowserRouter>
  )
}

export default App
