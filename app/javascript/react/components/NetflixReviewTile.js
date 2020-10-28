import React, { useState } from 'react'

const NetflixReviewTile = (props) => {
  const [voteClickCount, setVoteClickCount] = useState(props.votes)
  debugger
  const incrementCount = (event) => {
    event.preventDefault()
    props.addVote(1)
  }

  const decrementCount = (event) => {
    event.preventDefault()
    props.addVote(-1)
  }

  return (
    <ul>
      <div className = 'callout'>
        <li>{props.comment}</li>
        <li>Rating: {props.rating}</li>
        <p>Votes: {voteClickCount}</p>
        
        <button type="button" onClick={incrementCount}>Upvote</button>
        <button type="button" onClick={decrementCount}>Downvote</button>
      </div>
    </ul>
  )
}

export default NetflixReviewTile