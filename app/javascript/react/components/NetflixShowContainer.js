import React, { useState, useEffect } from 'react'

import NetflixShowTile from './NetflixShowTile'

const NetflixShowContainer = (props) => {
  const[netflixShow, setNetflixShow] = useState("")

  useEffect(() => {
    let id = props.match.params.id
    fetch(`/api/v1/netflix_shows/${id}.json`)
      .then(response => {
        if (response.ok) {
          return response
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
            error = new Errror(errorMessage)
          throw error
        }
      })
      .then(response => response.json())
      .then(body => {
        let netflix_show = body.netflix_show
        setNetflixShow(netflix_show)
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`))
  }, [])

  return (
    < NetflixShowTile 
      id={netflixShow.id}
      title={netflixShow.title}
      genre={netflixShow.genre}
      description={netflixShow.description}
    />
  )
}

export default NetflixShowContainer