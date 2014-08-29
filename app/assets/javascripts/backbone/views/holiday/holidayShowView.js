App.HolidayShowView = Backbone.View.extend({
  className: 'holiday-show',
  initialize: function(){
    console.log("New holiday show view");
    this.template = HandlebarsTemplates['holidays/holidayShow'];
    this.render();
  },
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
    $('#holiday-show').append(this.$el.html());
  }
})
