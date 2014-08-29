App.HolidayIndexView = Backbone.View.extend({
  className: 'holiday-index',
  initialize: function(){
    console.log("New Holiday Index View");
    this.template = HandlebarsTemplates['holidays/holidayIndex'];
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
    this.render();
  },
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
  }
})
