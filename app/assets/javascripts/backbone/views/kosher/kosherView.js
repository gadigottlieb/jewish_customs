App.KosherView = Backbone.View.extend({
  className: 'kosher',
  initialize: function(){
    console.log("New Kosher View");
    this.template = HandlebarsTemplates['koshers/kosher'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
  }
})
