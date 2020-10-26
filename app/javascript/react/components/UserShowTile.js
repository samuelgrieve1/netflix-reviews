import React from 'react'

const UserShowTile = (props) => {
  return (
    <div>
      <h1>{props.username}</h1>
      <h3>{props.first_name} {props.last_name}</h3>
      <h3>{props.email}</h3>
    </div>
  )
}

export default UserShowTile