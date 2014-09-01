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
  },
  //DOM EVENTS//

  events: {
    'click span.edit': 'editKosher',
    'click span.update': 'updateKosher',
    'click span.cancel': 'cancel'
  },

  editKosher: function(){
    console.log("Edit Kosher");
    App.kosherRouter.navigate('koshers/' + this.model.id + '/edit');
    this.$('.kosher-form-div').remove();
    this.$el.append(HandlebarsTemplates['koshers/kosherForm'](this.model.toJSON()));
    this.$('.kosher-form-div').show();
  },
  updateKosher: function(){
    var kosherData = {
      kosher_description: this.$["[name='kosher_description']"].val(),
      animal_quote: this.$("[name='animal_quote']").val(),
      animal_src: this.$("[name='animal_src']").val(),
      animal_description: this.$("[name='animal_description']").val(),
      fish_quote: this.$("[name='fish_quote']").val(),
      fish_src: this.$("[name='fish_src']").val(),
      fish_description: this.$("[name='fish_description']").val(),
      bird_quote: this.$("[name='bird_quote']").val(),
      bird_src: this.$("[name='bird_src']").val(),
      bird_description: this.$("[name='bird_description']").val(),
      remaining_creatures: this.$("[name='remaining_creatures']").val(),
      slaughter: this.$("[name='slaughter']").val(),
      utensils: this.$("[name='utensils']").val(),
      milk_and_meat: this.$("[name='milk_and_meat']").val(),
      kosher_certifications: this.$("[name='kosher_certifications']").val(),
      ortho_union: this.$("[name='ortho_union']").val(),
      organized_kosher: this.$("[name='organized_kosher']").val(),
      star_k: this.$("[name='star_k']").val(),
      kof_kosher: this.$("[name='kof_kosher']").val()
    };
    this.model.save(kosherData, {success: function(){
      this.$('.kosher-form-div').hide();
      App.kosherRouter.navigate("koshers");
    }});
  },
  cancel: function(){
    App.kosherRouter.navigate("koshers");
    this.$('.kosher-form-div').remove();
  }
})
