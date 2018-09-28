console.log('Hello from application vue webpack');

// Import coffee scss manifest
import '../src/stylesheets/vue/vue';

// Configure Stimulus
import 'bootstrap/dist/js/bootstrap';

import Rails from 'rails-ujs'
import Turbolinks from 'turbolinks'

Rails.start();
Turbolinks.start();

import Vue from 'vue/dist/vue.esm';

import TurbolinksAdapter from 'vue-turbolinks';

Vue.use(TurbolinksAdapter)

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

import '../src/javascript/vue/countdown';
import '../src/javascript/vue/list_items';

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
