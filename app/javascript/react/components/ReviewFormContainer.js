import React, { useState } from "react"

const ReviewFormContainer = (props) => {
  const [newReview, setNewReview] = useState({
    comment: "",
    rating: "",
  });

  const handleChange = event => {
    setNewReview({
      ...newReview,
      [event.currentTarget.name]: event.currentTarget.value
    });
  };

  const handleSubmit = event => {
    event.preventDefault();
    props.addNewReview(newReview);
    setNewReview({
      comment: "",
      rating: "",
    });
  };

  return (
    <form onSubmit={handleSubmit}className="new-review-form callout">
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