import React    from "react";
import { Link } from "react-router-dom";

export default () => (
  <div>
    <div>
      <div>
        <div className="aside-break1"> </div>
        <h1 className="subtitle"> <span className="aside-title"> Place </span>it</h1>
        <div className="aside-break2"> </div>
        <Link
          to="/reservations"
          className="btn btn-lg"
          role="button"
        >
          <p className="link"><span class="glyphicon glyphicon-calendar"></span>      Reservations </p>
        </Link>
        <Link
          to="/movies"
          className="btn btn-lg"
          role="button"
        >
          <p className="link"> <span class="glyphicon glyphicon-film"></span>        Movies </p>
        </Link>
        <div className="aside-break3"> </div>
      </div>
    </div>
  </div>
);
