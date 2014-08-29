App.KosherRouter = Backbone.Router.extend({
  routes: {
    'koshers': 'index'
  },
  initialize: function(){
    console.log("New Kosher Router");
    App.Collections.kosher = new App.KosherCollection();
    App.Views.kosherListView = new App.KosherListView({collection: App.Collections.kosher});
  },
  index: function(){
    $('#holiday-show').empty();
    $('#holiday-list').empty();
    App.Collections.kosher.fetch({reset: true});
  }
})
