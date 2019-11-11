import React    from "react";
import { Link } from "react-router-dom";

export default () => (
  <div>
    <div>
      <div>
          <h1>Cinemapp</h1>
        <p className="lead">
          Place a table for reservations here
        </p>
        <hr/>
        <Link
          to="/movies"
          className="btn btn-lg custom-button"
          role="button"
        >
          View Movies
        </Link>
        <div>
          <h1> Place a chunk of code here </h1>
        </div>
      </div>
    </div>
  </div>
);
