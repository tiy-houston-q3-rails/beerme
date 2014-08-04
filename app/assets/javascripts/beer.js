App = Ember.Application.create();

App.IndexController = Ember.Controller.extend({

});

App.IndexRoute = Ember.Route.extend({
  model: function(){

    return new Ember.RSVP.Promise(function(resolve){
      Ember.$.getJSON("/beers.json").then(function(data){
        resolve(data["beers"]);
      });
    });

  }
});
