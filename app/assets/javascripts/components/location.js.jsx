var Location = React.createClass({
  getInitialState() {
    return {
      location: this.props.location
    }
  },

  render() {
    return (
      <address>
        <strong>{this.state.location.line1}</strong><br/>
        {this.state.location.line2}<br/>
        {this.state.location.city}<br/>
        {this.state.location.country}<br/>
        {this.state.location.pin}
      </address>
    );
  }
});