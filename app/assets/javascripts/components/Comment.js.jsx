var Comment = React.createClass({

  render: function() {

    const commentProps = this.props.comment

    const comments = commentProps.map(comment => (
      <div key={comment.id}>
        <p>{comment.body}</p>
        <p>by {comment.user_id} at {comment.created_at}</p>
        <hr />
      </div>
    ))

    return (
      <div>
        {comments}
      </div>
    );
  }
});
