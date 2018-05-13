// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery.turbolinks
//= require chosen-jquery
//= require rails-ujs
//= require moment
//= require cocoon
//= require popper
//= require fullcalendar
//= require users
//= require bootstrap-sprockets
//= require fullcalendar
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .


$(function() {

  $('#calendar').fullCalendar({
    themeSystem: 'bootstrap4',
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay,listMonth'
    },
    events: '/events.json',
    eventLimit: true, // allow "more" link when too many events
  });

});
