import React from 'react'
import { Route, Switch, BrowserRouter } from "react-router-dom";
import NetflixIndexContainer from "./NetflixIndexContainer"

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={NetflixIndexContainer}/>
      </Switch>
    </BrowserRouter>
  )
}

export default App
