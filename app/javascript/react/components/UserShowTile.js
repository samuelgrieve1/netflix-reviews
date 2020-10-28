import React from 'react'

const UserShowTile = (props) => {
  let user_photo = ""
  if(props.profile_photo){
    user_photo = props.profile_photo.url
  }
  return (
    <div className='show-style'>
      <img src={user_photo} className="user_page_photo"/>
      <h1>{props.username}</h1>
      <h3>{props.first_name} {props.last_name}</h3>
      <h3>{props.email}</h3>
    </div>
  )
}

export default UserShowTile