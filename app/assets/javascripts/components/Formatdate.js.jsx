var Formatdate = React.createClass({
  getInitialState() {
    return {
      event_date: (new Date(this.props.event_date)).toLocaleTimeString('en-US', {year: "numeric", month: "short",day: "numeric"})
    }
  },

  render() {
    return (
      <span> {this.state.event_date} </span>
    );
  }
});