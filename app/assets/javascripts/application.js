// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require backbone
//= require handlebars
//= require_self
//= require_tree ./backbone/routers
//= require_tree ./backbone/models
//= require_tree ./backbone/collections
//= require_tree ./backbone/views
//= require_tree ./templates
//= require bootstrap-sprockets
//= require_tree .

// backbone
// App = {
//   Models: {},
//   Views: {},
//   Collections: {},
//   Router: {}
// };
//
// $(document).ready(function(){
//   App.holidayRouter = new App.HolidayRouter();
//   App.kosherRouter = new App.KosherRouter();
//   Backbone.history.start();
// })

// event listeners

var ready;
ready = function(){
  console.log('ready!');
  $('body').on('click', '.close', closeModal);
  $('body').on('click', '#submit', gradeTest)
}

function gradeTest(){
  
}

function closeModal(){
  $(this).remove();
  $('.modal').hide();
}
