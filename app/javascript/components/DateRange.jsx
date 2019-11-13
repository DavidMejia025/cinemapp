import React, { Component } from 'react';
import DateRangePicker from '@wojtekmaj/react-daterange-picker';

class DataRange extends Component {
  state = {
    date: [new Date(), new Date()],
  }

  onChange = date => this.setState({ date })

  render() {
    return (
      <div>
        Select date  <DateRangePicker
          onChange={this.onChange}
          value={this.state.date}
        />
      </div>
    );
  }
}

export default DataRange;
