var Navbar = React.createClass({
  render() {
    return (
        <div className="navbar navbar-default navbar-fixed-top">
          <div className="container">
            <div className="navbar-header">
              <a href="#" className="navbar-brand">Today Events</a>
            </div>
            <div className="navbar-collapse collapse" id="navbar-main">
              <ul className="nav navbar-nav">
                <li>
                  <a href="#" className="navbar-brand">This Week Events</a>
                </li>
                <li>
                  <a className="navbar-brand" href="#">This Month Events</a>
                </li>
                <li>
                  <a className="navbar-brand" href="#">ByDate</a>
                </li>
              </ul>

              <ul className="nav navbar-nav navbar-right">
                <li><a href="#">Search</a></li>
                <li><a href="#">SignIn</a></li>
              </ul>

            </div>
          </div>
        </div>
    );
  }
});