import Vue from 'vue/dist/vue.esm'
import VueCountdown from '@xkeshi/vue-countdown';

Vue.component('countdown', VueCountdown);

window.addEventListener('DOMContentLoaded', function () {
  var countdown = new Vue({
    el: '#countdown',
    data: function () {
      var now = new Date();
      var newYear = new Date(now.getFullYear() + 1, 0, 1);

      return {
        counting: false,
        time: newYear - now,
      };
    },
    methods: {
      countdown: function () {
        this.counting = true;
      },
      countdownend: function () {
        this.counting = false;
      },
    },
  });
});