import React from "react";

class ReservationTable extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      movies: []
    };
  }

  componentDidMount() {
    const url = "/api/v1/movies/index";
    fetch(url)
      .then(response => {
        if (response.ok) {
          return response.json();
        }
        throw new Error("Network response was not ok.");
      })
      .then(response => this.setState({ movies: response }))
      .catch(() => this.props.history.push("/"));
  }

  render() {
    const { movies } = this.state;
    const allMovies = movies.map((movie, index) => (
      <tr>
        <td>{movie.name}</td>
        <td>{movie.name}</td>
        <td>{movie.name}</td>
        <td>{movie.name}</td>
        <td>{movie.name}</td>
      </tr>
    ));

    return (
      <table class="table table-hover">
        <thead>
          <tr>
            <th>Movie </th>
            <th>User name</th>
            <th>User email</th>
            <th>User id</th>
            <th>User mobile phone</th>
          </tr>
        </thead>
        <tbody>
          {allMovies}
        </tbody>
      </table>
    )
  }
}
export default ReservationTable;
