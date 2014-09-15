// App.KosherRouter = Backbone.Router.extend({
//   routes: {
//     'koshers': 'index',
//     'koshers/:id/edit': 'editKoshers'
//   },
//   initialize: function(){
//     console.log("New Kosher Router");
//     App.Collections.kosher = new App.KosherCollection();
//     App.Views.kosherListView = new App.KosherListView({collection: App.Collections.kosher});
//     App.Views.kosherFormView = new App.KosherFormView({collection: App.Collections.kosher});
//   },
//   index: function(){
//     $('#holiday-show').empty();
//     $('#holiday-list').empty();
//     $('#kosher-form').empty();
//     App.Collections.kosher.fetch({reset: true});
//   },
//   editKoshers: function(id){
//     App.Collections.kosher.fetch({reset: true, success: function(){
//         $('#' + id).find('span.edit').click()
//       }}
//     );
//     $('#kosher-form').hide();
//   }
// })
