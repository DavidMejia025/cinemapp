import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Home          from "../components/Home";
import Movies        from "../components/Movies";
import Reservations  from "../components/Reservations";

export default (
  <Router>
    <Switch>
      <Route path="/"              exact component={Home}   />
      <Route path="/movies"        exact component={Movies} />
      <Route path="/reservations"  exact component={Reservations} />
    </Switch>
  </Router>
);
