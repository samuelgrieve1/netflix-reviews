import React from 'react'

const UserReviewTile = (props) => {
  return (
    <ul>
      <div className = 'callout'>
        <h4>{props.show_title}</h4>
        <li>{props.comment}</li>
        <li>Rating: {props.rating}</li>
      </div>
    </ul>
  )
}

export default UserReviewTile