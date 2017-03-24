var Users = React.createClass({
  render() {
    return (
      <div>
        <p>This is the users component</p>
        {this.props.user}
        <hr />
      </div>
    )
  }
})
