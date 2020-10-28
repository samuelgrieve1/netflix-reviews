import React, { useState, useEffect } from "react"

import NetflixTile from './NetflixTile'

const NetflixIndexContainer = (props) => {
  const [shows, setShows] = useState([])

  useEffect(() => {
    fetch("/api/v1/netflix_shows")
    .then(response => {
      if(response.ok){
        return response
      } else{
        let errorMessage = `${response.status}(${response.statusText})`,
        error = new Error(errorMessage)
        throw(error)
      }
    })
    .then(response => {
      return response.json()
    })
    .then(body => {
      setShows(body)
    }).catch(error => console.error(`Error in fetch: ${error.message}`))
  }, [])
  
  let showtiles = shows.map((show) => {
    return(
      < NetflixTile
        key = {show.id}
        id = {show.id}
        title = {show.title}
      />
    )
  })

  return(
    <div className = 'grid-container'>
      <div className='background-image'></div>
      <div className='show-callout'>
        <h3>Netflix Shows</h3>
        {showtiles}
      </div>
    </div>
  )
}

export default NetflixIndexContainer