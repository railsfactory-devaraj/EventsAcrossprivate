var Event = React.createClass({
  getInitialState() {
    return {
      event: this.props.event,
      locations: this.props.event.locations
    }
  },

  render() {
    return (

       
        <div className="col-md-3">
          <div className="events">
            <p className="lead"> <b> {this.state.event.title} </b></p>
            <div> <b> Event Strats At: </b> <Formatdate event_date={this.state.event.starts_at} /></div>
            <div> <b> Event Ends At: </b><Formatdate event_date={this.state.event.ends_at} /> </div>
            <div> <b> Link: </b> {this.state.event.url} </div>
            <div><b> Location: </b> {(this.state.locations.length > 0) ? <Locations locations={this.state.locations}/> : 'No Location specified'} </div>
            <div><b>Description:</b> {this.state.event.description} </div>
          </div>
        </div>
    );
  }
});