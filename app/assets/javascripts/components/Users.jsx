var Users = React.createClass({

  render () {

    const userProps = this.props.users

    const user = userProps.map(userprop => (
      <li>{userprop.name}</li>
    ))

    return (
      <ul>
        {user}
      </ul>
    )
  }
});
