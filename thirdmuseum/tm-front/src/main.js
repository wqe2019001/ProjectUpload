import React from 'react';
import ReactDOM from 'react-dom/client';
import '../src/style/common.css';
import '../src/style/main.css';
import App from './App';
import Header from './common/header';
import Main from './pages/main';

import Footer from './common/footer';
import reportWebVitals from './reportWebVitals';
import 'bootstrap/dist/css/bootstrap.css';

const root = ReactDOM.createRoot(document.getElementById('header'));
root.render(
  <React.StrictMode>
  <Header/>
  </React.StrictMode>
);
const root1 = ReactDOM.createRoot(document.getElementById('main'));
root1.render(
  <React.StrictMode>
  <Main/>
  </React.StrictMode>
);
const root2 = ReactDOM.createRoot(document.getElementById('footer'));
root2.render(
  <React.StrictMode>
  <Footer/>
  </React.StrictMode>
);
// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
