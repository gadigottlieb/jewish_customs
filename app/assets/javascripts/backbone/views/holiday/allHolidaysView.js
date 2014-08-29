App.AllHolidaysView = Backbone.View.extend({
  el: "#holiday-list",
  initialize: function(){
    console.log("New Holiday List View");
    this.listenTo(this.collection, 'add', this.addOne)
    this.listenTo(this.collection, 'reset', this.addAll);
    // this.render();
  },
  addOne: function(holiday){
    var holidayView = new App.HolidayIndexView({model: holiday});
    this.$el.append(holidayView.$el);
  },
  addAll: function(){
    this.$el.html("");
    this.collection.each(function(holiday){
      this.addOne(holiday);
    }, this)
  },

  events: {
    'click img': 'showHoliday',
  },

  showHoliday: function(ev){
    var holidayId = $(ev.target).attr('class')
    // clear out listview before rendering holiday view
    // might want to wipe collection as well
    // this.$el.remove();
    this.$el.html("");
    // use trigger true to make sure router triggers function
    App.holidayRouter.navigate('holidays/'+ holidayId, {trigger: true})
  }

})
