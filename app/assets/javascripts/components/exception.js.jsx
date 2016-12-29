var Exception = React.createClass({
  getInitialState() {
    return {
      exception: this.props.exception
    }
  },

  render() {
    return (
      <div className="jumbotron">
        <h1>{this.state.exception}</h1>
        <p className="lead">The web server is returning an internal error for <em><span id="display-domain"></span></em>.</p>
        <a href="javascript:document.location.reload(true);" className="btn btn-default btn-lg text-center"><span className="green">Try This Page Again</span></a>
      </div>
    );
  }
});