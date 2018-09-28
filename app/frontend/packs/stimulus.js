console.log('Hello from application stimulus webpack');

// Import stimulus scss manifest
import '../src/stylesheets/stimulus/stimulus';

// Configure Stimulus and plugins
import 'bootstrap/dist/js/bootstrap';

import Rails from 'rails-ujs'
import Turbolinks from 'turbolinks'

Rails.start();
Turbolinks.start();

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("src/javascripts/stimulus", true, /.js$/)
application.load(definitionsFromContext(context))