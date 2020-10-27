import React, { useState } from 'react'

const NetflixReviewTile = (props) => {
  const [voteClickCount, setVoteClickCount] = useState(props.votes)

  const incrementCount = (event) => {
    event.preventDefault()
    props.addVote(voteClickCount)
    const newVoteClickCount = voteClickCount + 1
    setVoteClickCount(newVoteClickCount)
  }

  const decrementCount = (event) => {
    event.preventDefault()
    props.addVote(voteClickCount)
    const newVoteClickCount = voteClickCount - 1
    setVoteClickCount(newVoteClickCount)
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