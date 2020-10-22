import React, { useState, useEffect } from 'react'

const NetflixShowTile = (props) => {
  return (
    <div>
      <h1>{props.title}</h1>
      <p>Genre: {props.genre}</p>
      <p>Description: {props.description}</p>

      <h1>Reviews: </h1>
      
    </div>
  )
}

export default NetflixShowTile