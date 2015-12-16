// For more information see: http://emberjs.com/guides/routing/

Satori.ApplicationRoute = Ember.Route.extend({
  model () {
    let data = this.store.findRecord('currentUser', 0);
    return data;
  },
  setupController (controller, user) {
    controller.set('model', user);
  },

});
