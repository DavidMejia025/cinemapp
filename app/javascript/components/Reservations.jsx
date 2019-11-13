import React             from "react";
import { Link }          from "react-router-dom";
import Aside             from "../components/Aside";
import ReservationTable  from "../components/ReservationTable";
import DateRangePicker   from "../components/DateRange";

export default () => (
  <div className="container">
    <div className="row">
      <div className="aside col-md-2">
        <div>
          <Aside />
        </div>
      </div>
      <div className="col-md-8 reservations">
        <div className="col-md-12 reservations-title">
          <h1>Reservations list</h1>
        </div>
        <div className="col-md-12 date">
          <p>
            <DateRangePicker />
          </p>
        </div>
        <div className="col-md-12 reservations-table">
          <ReservationTable />
        </div>
      </div>
    </div>
  </div>
);
