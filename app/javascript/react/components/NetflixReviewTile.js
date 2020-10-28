import React from 'react'

const NetflixReviewTile = (props) => {
  return (
    <div className = 'callout'>
      <p>{props.comment}</p>
      <p>Rating: {props.rating}</p>
    </div>
  )
}

export default NetflixReviewTile