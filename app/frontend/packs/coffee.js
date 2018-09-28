console.log('Hello from application coffee webpack');

// Import coffee scss manifest
import '../src/stylesheets/coffee/coffee';

// Coffescript configuration
import 'bootstrap/dist/js/bootstrap';

// run rails ujs
const Rails = require('rails-ujs');
Rails.start();

// run turbolinks
const Turbolinks = require('turbolinks');
Turbolinks.start();
