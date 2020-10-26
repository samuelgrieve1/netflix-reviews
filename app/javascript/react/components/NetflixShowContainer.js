import React, { useState, useEffect } from 'react'

import NetflixShowTile from './NetflixShowTile'
import NetflixReviewTile from './NetflixReviewTile'
import ReviewFormContainer from './ReviewFormContainer'

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
            error = new Errror(errorMessage)
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
      return(
        < NetflixReviewTile
          key={review.id}
          comment={review.comment}
          rating={review.rating}
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

  const addNewReview = (props) => {
    fetch(`/api/v1/netflix_shows/${id}/reviews`, {
      method: 'POST',
      body: JSON.stringify(props)
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
    .then(props => {
      setReviews([
        ...reviews,
        props,
      ]);
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  };
  
  let netflixReviewArray = []
  let netflixNoReviewMessage = ""
  if (netflixShow.reviews) {
    netflixReviewArray = netflixShow.reviews.map((review) => {
      return(
        < NetflixReviewTile
          key={review.id}
          comment={review.comment}
          rating={review.rating}
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
      <div>
        <NetflixShowTile
          id={netflixShow.id}
          title={netflixShow.title}
          genre={netflixShow.genre}
          description={netflixShow.description}
        />
      </div>
      <div>
        <ReviewFormContainer 
        addNewReview={addNewReview} />
      </div>
      <div>
        <h3>Average Rating: {getAvgRating()}</h3>
        <h3>Reviews: {netflixNoReviewMessage}</h3>
        {netflixReviewArray}
      </div>
    </div>
  )
}

export default NetflixShowContainer
