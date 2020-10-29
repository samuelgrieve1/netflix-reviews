import React from 'react'
import { Link } from "react-router-dom"

const NetflixTile = (props) => {
  
  return (
    <tr>
      <td><Link to={`netflix_shows/${props.id}`} >
        {props.title}
      </Link></td>
      <td><p>{props.genre}</p></td>
      <td>{props.averageRating}</td>
    </tr>
  )
}

export default NetflixTile
