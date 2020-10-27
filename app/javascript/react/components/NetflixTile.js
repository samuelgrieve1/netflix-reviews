import React from 'react'
import { Link } from "react-router-dom"

const NetflixTile = (props) => {

  return (
    <div>
      <Link to={`netflix_shows/${props.id}`} >
        {props.title}
      </Link>
    </div>
  )
}

export default NetflixTile