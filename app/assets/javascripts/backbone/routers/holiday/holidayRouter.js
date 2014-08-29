App.HolidayRouter = Backbone.Router.extend({
  routes: {
    'holidays': 'index',
    'holidays/:id': 'show'
  },
  initialize: function(){
    console.log("New Holiday Router");
    App.Collections.holidays = new App.HolidayCollection();
    App.Views.holidayListView = new App.AllHolidaysView({collection: App.Collections.holidays});
  },
  index: function(){
    $('#holiday-show').empty();
    $('#kosher-index').empty();
    console.log("Holiday Index");
    App.Collections.holidays.fetch({reset: true});
  },
  show: function(id){
    console.log("Showing a Blog");
    $('#holiday-list').empty();
    $('#kosher-index').empty();
    var holidayModel = App.Collections.holidays.get(id);
    App.Views.holidayShowView = new App.HolidayShowView({
      model: holidayModel
    });
  }
})
