import React, { useState } from "react"
import ErrorList from "./ErrorList"
import _ from 'lodash'


const ReviewFormContainer = (props) => {
  const [newReview, setNewReview] = useState({
    comment: "",
    rating: "",
  });

  const defaultFields = {
    comment: '',
    rating: ''
  };

  const [errors, setErrors] = useState({})
  
  const handleChange = event => {
    setNewReview({
      ...newReview,
      [event.currentTarget.name]: event.currentTarget.value
    });
  };


  const validForSubmission = () => {
    let submitErrors = {}
    const requiredFields = ["comment", "rating"]
    
    requiredFields.forEach(field => {
      if (newReview[field].trim() === "") {
        submitErrors = {
          ...submitErrors,
          [field]: "is blank"
        }
      }
    })

    setErrors(submitErrors)
      return _.isEmpty(submitErrors)
  }

    const handleSubmit = event => {
      event.preventDefault();
      if (validForSubmission()) {
        props.addNewReview(newReview);
        setNewReview({
          comment: "",
          rating: "",
        });
      }
    };

  return (
    <form onSubmit={handleSubmit}className="new-review-form callout">
      <ErrorList errors={errors} />
      <label>
        Review Comment:
        <input
          name="comment"
          id="comment"
          type="text"
          onChange={handleChange}
          value={newReview.comment}
        />
      </label>
      <label>
        Review Rating:
        <input
          name="rating"
          id="rating"
          type="number"
          onChange={handleChange}
          value={newReview.rating}
        />
      </label>

      <div className="button-group">
        <input className="button" type="submit" value="Submit" />
      </div>
    </form>
  )
}

export default ReviewFormContainer