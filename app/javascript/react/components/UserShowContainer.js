import React, { useState, useEffect } from 'react'

import UserShowTile from "./UserShowTile"
import UserReviewTile from "./UserReviewTile"

const UserShowContainer = (props) => {
  const[userShow, setUserShow] = useState({})
    
  useEffect(()=>{
    let id = props.match.params.id
    fetch(`/api/v1/users/${id}`)
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
        setUserShow(body)
      })   
      .catch(error => console.error(`Error in fetch: ${error.message}`))
  }, [])

  let userReviewArray = []
  let userNoReviewMessage = ""
  if (userShow.reviews) {
    userReviewArray = userShow.reviews.map((review) => {
      return(
        < UserReviewTile
          key={review.id}
          comment={review.comment}
          rating={review.rating}
          show_title={review.netflix_show.title}
        />
      )
    })
  } else {
    userNoReviewMessage = "You have not posted any reviews yet."
  }
  
  return(
    <div>
      <UserShowTile
          id={userShow.id}
          username={userShow.username}
          first_name={userShow.first_name}
          last_name={userShow.last_name}
          email={userShow.email}
        />
      <h3>Reviews: {userNoReviewMessage}</h3>
      {userReviewArray}
    </div>
  )
}

export default UserShowContainer