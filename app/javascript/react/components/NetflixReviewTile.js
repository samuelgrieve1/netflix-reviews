import React from 'react'

const NetflixReviewTile = (props) => {
  return (
    <ul>
      <div className = 'callout'>
        <li>{props.comment}</li>
        <li>Rating: {props.rating}</li>
      </div>
    </ul>
  )
}

export default NetflixReviewTile