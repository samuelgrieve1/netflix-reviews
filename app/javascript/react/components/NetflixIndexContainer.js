import React, { useState, useEffect } from "react"

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
      <li key={show.id}>
        {show.title}
      </li>
    )
  })

  return(
    <div>
      <h2>Netflix Shows</h2>
      {showtiles}
    </div>
  )
}

export default NetflixIndexContainer