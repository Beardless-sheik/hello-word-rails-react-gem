import React from 'react';
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Store from '../redux/store';
import { Provider } from 'react-redux';
import Greeting from './Greeting';

class App extends React.Component {
  render() {
    return(
      <Provider store={Store}>
      <BrowserRouter>
        <div>
          Hello World
        </div>
        {/* <Greeting /> */}
        <Routes>
          <Route path="/main" element={<Greeting />} />
        </Routes>
      </BrowserRouter>
      </Provider>
    );
  }
}

export default App;