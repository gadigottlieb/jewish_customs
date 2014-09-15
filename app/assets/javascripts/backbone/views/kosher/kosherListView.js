// App.KosherListView = Backbone.View.extend({
//   el: '#kosher-index',
//   initialize: function(){
//     console.log("New Kosher View");
//     this.listenTo(this.collection, 'add', this.addOne)
//     this.listenTo(this.collection, 'reset', this.addAll);
//   },
//   addOne: function(kosher){
//     var kosherView = new App.KosherView({model: kosher});
//     this.$el.append(kosherView.$el);
//   },
//   addAll: function(){
//     this.$el.html("");
//     this.collection.each(function(kosher){
//       this.addOne(kosher);
//     }, this)
//   }
// })
