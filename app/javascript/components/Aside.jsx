import React    from "react";
import { Link } from "react-router-dom";

export default () => (
  <div>
    <div>
      <div>
        <div className="aside-break"> </div>
        <h1> <span className="aside-title"> Place </span> it</h1>
        <div className="aside-break"> </div>
        <Link
          to="/reservations"
          className="btn btn-lg"
          role="button"
        >
          <p>Search icon: <span class="glyphicon glyphicon-search"></span></p>
        </Link>
        <Link
          to="/movies"
          className="btn btn-lg"
          role="button"
        >
          <span class="glyphicon glyphicon-film">  Movies</span>  Movies
        </Link>
        <div className="aside-break2"> </div>
      </div>
    </div>
  </div>
);
