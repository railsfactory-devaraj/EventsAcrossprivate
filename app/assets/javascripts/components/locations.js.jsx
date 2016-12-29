var Locations = React.createClass({

  render: function() {
    locations = this.props.locations.map( function(location) {
      return (
         <Location location={location} key={location.id} />
      );
    });
    return (
      <div>
        { locations }   
      </div>
    );
  }
});