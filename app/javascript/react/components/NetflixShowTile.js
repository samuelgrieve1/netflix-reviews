import React, { useState, useEffect } from 'react'

const NetflixShowTile = (props) => {
  return (
    <div>
      <h1>{props.title}</h1>
      <p>Genre: {props.genre}</p>
      <p>Description: {props.description}</p>
    </div>
  )
}

export default NetflixShowTile