import React, { useState, useEffect } from 'react'

import NetflixShowTile from './NetflixShowTile'
import NetflixReviewTile from './NetflixReviewTile'
import ReviewFormContainer from './ReviewFormContainer'

const NetflixShowContainer = (props) => {
  const[netflixShow, setNetflixShow] = useState({})
  const[showReviews, setShowReviews] = useState([])

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
    }, []
  )

  const addNewReview = (formData) => {
    fetch(`/api/v1/netflix_shows/${props.match.params.id}/reviews`, {
      method: 'POST',
      body: JSON.stringify(formData),
      credentials: 'same-origin',
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json"
      }
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
      setShowReviews([...showReviews, body]);
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
          id={review.id}
          showid={netflixShow.id}
          comment={review.comment}
          rating={review.rating}
          votes={review.votes_total}
          currentUser={netflixShow.currentUser}
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

  let reviewForm
  if (netflixShow.user_signed_in) {
    reviewForm = <ReviewFormContainer addNewReview={addNewReview}/>
  }

  return (
    <div className='grid-container'>
      <div className='background-image-show'></div>
      <div className='show-style'>
        <NetflixShowTile
          id={netflixShow.id}
          title={netflixShow.title}
          genre={netflixShow.genre}
          description={netflixShow.description}
        />
        <h4>Average Rating: {getAvgRating()}</h4>
        <h4>Reviews: {netflixNoReviewMessage}</h4>
        <div>
          {reviewForm}
        </div>
        <div>
          {netflixReviewArray}
        </div>
      </div>
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

  let reviewForm
  if (netflixShow.user_signed_in) {
    reviewForm = <ReviewFormContainer addNewReview={addNewReview}/>
  }

  return (
    <div className='grid-container'>
      <div className='background-image-show'></div>
      <div className='show-style'>
        <NetflixShowTile
          id={netflixShow.id}
          title={netflixShow.title}
          genre={netflixShow.genre}
          description={netflixShow.description}
        />
        <h4>Average Rating: {getAvgRating()}</h4>
        <h4>Reviews: {netflixNoReviewMessage}</h4>
        <div>
          {reviewForm}
        </div>
        <div>
          {netflixReviewArray}
        </div>
      </div>
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

  let reviewForm
  if (netflixShow.user_signed_in) {
    reviewForm = <ReviewFormContainer addNewReview={addNewReview}/>
  }

  return (
    <div className='grid-container'>
      <div className='background-image-show'></div>
      <div className='show-style'>
        <NetflixShowTile
          id={netflixShow.id}
          title={netflixShow.title}
          genre={netflixShow.genre}
          description={netflixShow.description}
        />
        <h4>Average Rating: {getAvgRating()}</h4>
        <h4>Reviews: {netflixNoReviewMessage}</h4>
        <div>
          {reviewForm}
        </div>
        <div>
          {netflixReviewArray}
        </div>
      </div>
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

  let reviewForm
  if (netflixShow.user_signed_in) {
    reviewForm = <ReviewFormContainer addNewReview={addNewReview}/>
  }

  return (
    <div className='grid-container'>
      <div className='background-image-show'></div>
      <div className='show-style'>
        <NetflixShowTile
          id={netflixShow.id}
          title={netflixShow.title}
          genre={netflixShow.genre}
          description={netflixShow.description}
        />
        <h4>Average Rating: {getAvgRating()}</h4>
        <h4>Reviews: {netflixNoReviewMessage}</h4>
        <div>
          {reviewForm}
        </div>
        <div>
          {netflixReviewArray}
        </div>
      </div>
    </div>
  )
}

export default NetflixShowContainer