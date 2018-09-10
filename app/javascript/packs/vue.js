import 'bootstrap/dist/js/bootstrap';

console.log('Hello from Webpacker running Stimulus');

import 'bootstrap/dist/js/bootstrap';

// run rails ujs
const Rails = require('rails-ujs');
Rails.start();

// run turbolinks
const Turbolinks = require('turbolinks');
Turbolinks.start();

import Vue from 'vue/dist/vue.esm'

console.log('Hello World from Webpacker Running Vue')

document.addEventListener('DOMContentLoaded', () => {

  const hoverTitle = new Vue({
    el: '#hover-title',
    data: {
      message: 'You loaded this page on ' + new Date().toLocaleString()
    }
  })

  const todoList = new Vue({
    el: '#todo-list',
    data: {
      todos: [
        { text: 'Learn JavaScript 3' },
        { text: 'Learn Vue 2' },
        { text: 'Build something awesome 2' }
      ]
    }
  })

  const reverseMessage = new Vue({
    el: '#reverse-message',
    data: {
      user_message: 'Hello Vue.js!'
    },
    methods: {
      reverseMessage: function () {
        this.user_message = this.user_message.split('').reverse().join('')
      }
    }
  })

  const userInput = new Vue({
    el: '#user-input',
    data: {
      user_input_message: 'Hello Vue.js!'
    }
  })

});
