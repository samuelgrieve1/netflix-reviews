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
        genre = {show.genre}
        averageRating = {show.average_rating}
        reviews = {show.reviews}
      />
    )
  })

  return(
    <div className = 'grid-container'>
      <div className='background-image'></div>
      <div className='show-callout'>
        <table>
          <thead>
            <tr>
              <th width='200'>Show:</th>
              <th width='200'>Genre:</th>
              <th width='200'>Rating:</th>
            </tr>
          </thead>
          <tbody>
            {showtiles}
          </tbody>
        </table>
      </div>
    </div>
  )
}

export default NetflixIndexContainer