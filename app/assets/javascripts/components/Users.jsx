var Users = React.createClass({

  render () {

    const placeholderImg = "/assets/fallback/student_placeholder-3f21e445d1cd8d1b856a2a937b04e2a85408af9a77da3846e3b8ccc487639802.png"

    const userProps = this.props.users

    const user = userProps.map(userprop => (
      <div className="row" key={userprop.id}>
        <div className="col-md-2">
          <img src={userprop.image.url} className="thumbnail" />
        </div>
        <div className="col-md-2">
          <a href={"users/" + userprop.id}>{userprop.name}</a>
        </div>
        <div className="col-md-2">
          <h5>Cohort: {userprop.cohort_id}</h5>
        </div>
        <div className="col-md-2">
          <h5><span className="glyphicon glyphicon-envelope" aria-hidden="true"></span> {userprop.email}</h5>
        </div>
      </div>

    ))

    return (
      <ul>
        {user}
      </ul>
    )
  }
});
