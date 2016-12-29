// app/assets/javascripts/components/employees.js.jsx
var Events = React.createClass({

  render: function() {
    events = this.props.presenter.data.map( function(event) {
      return (
         <Event event={event} key={event.id} />
      );
    });
    return (


      <div className="container">
      <div className="row">
        { events }
      </div>
      </div>

              
    );
  }
});




