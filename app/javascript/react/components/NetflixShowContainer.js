import React, { useState, useEffect } from 'react'

import NetflixShowTile from './NetflixShowTile'
import NetflixReviewTile from './NetflixReviewTile'

const NetflixShowContainer = (props) => {
  const[netflixShow, setNetflixShow] = useState({})

  useEffect(() => {
    let id = props.match.params.id
    fetch(`/api/v1/netflix_shows/${id}`)
      .then(response => {
        if (response.ok) {
          return response
        } else {
          let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage)
          throw error
        }
      })
      .then(response => response.json())
      .then(body => {
        setNetflixShow(body)
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`))
  }, [])

  
  
  let netflixReviewArray = []
  let netflixNoReviewMessage = ""
  if (netflixShow.reviews) {
    netflixReviewArray = netflixShow.reviews.map((review) => {

      const addVote = (votePayload, requestMethod) => {
        fetch(`/api/v1/netflix_shows/${netflixShow.id}/reviews/${review.id}/votes`, {
          method: "POST",
          credentials: "same-origin",
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(votePayload)
        })
        .then(response => {
          if (response.ok) {
            return response;
          } else {
            let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
            throw(error);
          }
        })
        .then(response => response.json())
        .then(body => { 
          //  we should get back the netflix show with a review with new vote count
          //  setNetflixShow([]
          //    ...netflixShow,
          //    body.voteClickCount)
        })
        .catch(error => console.error(`Error in fetch: ${error.message}`));
      }

      return(
        < NetflixReviewTile
          key={review.id}
          comment={review.comment}
          rating={review.rating}
          votes={review.votes_total}
          addVote={addVote}
        />
      )
    })
  } else {
    netflixNoReviewMessage = "No reviews yet."
  }

  let avgReviewRating = ""
  const getAvgRating = () => {
    if (netflixShow.reviews) {
      let counter = 0
      netflixShow.reviews.forEach((review) => {
        counter += review.rating
      })
      avgReviewRating = Math.round(counter / netflixShow.reviews.length)
    } else {
      avgReviewRating = "No ratings yet."
    }
    return avgReviewRating
  }
  
  return (
    <div>
      <NetflixShowTile
        id={netflixShow.id}
        title={netflixShow.title}
        genre={netflixShow.genre}
        description={netflixShow.description}
      />
      <h3>Average Rating: {getAvgRating()}</h3>
      <h3>Reviews: {netflixNoReviewMessage}</h3>
      {netflixReviewArray}
    </div>
  )
}

export default NetflixShowContainer
