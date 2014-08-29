App.HolidayCollection = Backbone.Collection.extend({
  model: App.HolidayModel,
  url: '/holidays',
  initialize: function(){
    console.log("New Holiday Collection");
  },
  save: function(){
    this.each(function(model){
      if (!model.has('id') || model.hasChanged()) {model.save(); }
    }, this)
  }
})
