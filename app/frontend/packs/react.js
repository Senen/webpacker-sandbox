// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

// Import stimulus scss manifest
import '../src/stylesheets/react/react';

// Configuration and plugins
import 'bootstrap/dist/js/bootstrap';

import Rails from 'rails-ujs'
import Turbolinks from 'turbolinks'

import '../src/javascripts/react/hello_react';
// document.addEventListener('DOMContentLoaded', () => {
//   ReactDOM.render(
//     <h1>Hello, world!</h1>,
//     document.getElementById('root')
//   );
// })
// ReactDOM.render(
//   <h1>Hello, world!</h1>,
//   document.getElementById('root')
// );

// const Hello = props => (
//   <div>Hello {props.name}!</div>
// )
//
// Hello.defaultProps = {
//   name: 'David'
// }
//
// Hello.propTypes = {
//   name: PropTypes.string
// }
//
// document.addEventListener('DOMContentLoaded', () => {
//   ReactDOM.render(
//     <Hello name="React" />,
//     document.body.appendChild(document.createElement('div')),
//   )
// })
