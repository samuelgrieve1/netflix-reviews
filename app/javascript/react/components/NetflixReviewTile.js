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
        <button className ='button' type="button" onClick={incrementCount}>Upvote</button>
        <button className ='button' type="button" onClick={decrementCount}>Downvote</button>
      </>
  }

  return (
      <div className = 'callout'>
        <p>{props.comment}</p>
        Rating: {props.rating}
        <p>Votes: {votesTotal}</p>
        {voteButtons}
      </div>

  )
}

export default NetflixReviewTile