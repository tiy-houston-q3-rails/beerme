App = Ember.Application.create();
App.Store = DS.Store.extend();
App.ApplicationSerializer = DS.ActiveModelSerializer.extend({});


App.Beer = DS.Model.extend({
  name: DS.attr('string'),
  abv:  DS.attr('string'),
  photo: DS.attr('string'),
  style: DS.attr('string'),
  brewery: DS.belongsTo('brewery')
});

App.Brewery = DS.Model.extend({
  name: DS.attr('string'),
  location: DS.attr('location')
});


App.Router.map(function() {
  this.route('beers', { path: "/beers/:beer_id" });
});


App.IndexController = Ember.Controller.extend({

});

App.IndexRoute = Ember.Route.extend({
  // model: function(){
  //
  //   return new Ember.RSVP.Promise(function(resolve){
  //     Ember.$.getJSON("/beers.json").then(function(data){
  //       resolve(data["beers"]);
  //     });
  //   });
  //
  // }

  model: function(){
    return this.store.find('beer');
  }
});
