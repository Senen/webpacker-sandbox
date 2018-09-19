/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript/vue and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'vue' %> to the appropriate
// layout file, like app/views/layouts/vue.html.erb
console.log('Hello from application vue webpack');

import Vue from 'vue/dist/vue.esm';

// run Turbolinks
import TurbolinksAdapter from 'vue-turbolinks';
Vue.use(TurbolinksAdapter)
const Turbolinks = require('turbolinks');
Turbolinks.start();

// JQuery Rails unobstrusive adapter
import {} from 'jquery-ujs'

// run rails ujs
const Rails = require('rails-ujs');
Rails.start();

// Bootstrap 4 load
import BootstrapVue from 'bootstrap-vue'
Vue.use(BootstrapVue);

// FontAwesome load
import { icon } from 'vue-fontawesome';
Vue.component('vf-icon', icon);

// Axios load
import axios from 'axios'
import VueAxios from 'vue-axios'

Vue.use(VueAxios, axios)

import './vue/countdown';
import './vue/list_items';

$(document).on("turbolinks:load", function() {

  var hoverTitle = new Vue({
    el: '#hover-title',
    data: {
      message: 'You loaded this page on ' + new Date().toLocaleString()
    }
  });

  var todoList = new Vue({
    el: '#todo-list',
    data: {
      todos: [
        { text: 'Learn JavaScript 3' },
        { text: 'Learn Vue 2' },
        { text: 'Build something awesome 2' }
      ]
    }
  });

  var reverseMessage = new Vue({
    el: '#reverse-message',
    data: {
      user_message: 'Hello Vue.js!'
    },
    methods: {
      reverseMessage: function () {
        this.user_message = this.user_message.split('').reverse().join('')
      }
    }
  });

  var userInput = new Vue({
    el: '#user-input',
    data: {
      user_input_message: 'Hello Vue.js!'
    }
  });

  new Vue({
    el: '.icon-button',
    components: {
     'vf-icon': icon
    }
  });

});
