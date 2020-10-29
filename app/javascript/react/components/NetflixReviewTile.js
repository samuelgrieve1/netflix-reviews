import React, { useState } from 'react'

const NetflixReviewTile = (props) => {
  const [votesTotal, setVotesTotal] = useState(props.votes)
  const incrementCount = (event) => {
    event.preventDefault()
    addVote(1)
  }

  const decrementCount = (event) => {
    event.preventDefault()
    addVote(-1)
  }

  const addVote = (votePayload) => {
    fetch(`/api/v1/netflix_shows/${props.showid}/reviews/${props.id}/votes`, {
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
      setVotesTotal(body.votes_total)
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  let voteButtons
  if (props.currentUser){
    voteButtons = 
      <>
        <button type="button" onClick={incrementCount}>Upvote</button>
        <button type="button" onClick={decrementCount}>Downvote</button>
      </>
  }

  return (
    <ul>
      <div className = 'callout'>
        <li>{props.comment}</li>
        <li>Rating: {props.rating}</li>
        <p>Votes: {votesTotal}</p>
        {voteButtons}
      </div>
    </ul>
  )
}

export default NetflixReviewTile