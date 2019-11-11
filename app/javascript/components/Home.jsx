import React    from "react";
import { Link } from "react-router-dom";
import Aside    from "../components/Aside";

export default () => (
  <div className="container">
    <div className="row">
      <div className="aside col-md-2">
        <div>
          <Aside />
        </div>
      </div>
      <div className="col-md-8">
        <div>
          <div>
            <div>
              <h1>Cinemapp</h1>
              <p>
                Place a table for reservations THERE
                <p>Search icon: <span class="glyphicon glyphicon-search"></span></p>
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
      </div>
    </div>
  </div>
);
