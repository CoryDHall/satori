// For more information see: http://emberjs.com/guides/routing/

Satori.UserRoute = Ember.Route.extend({
  model () {
    let data = this.store.find('currentUser');
    return data;
  },
  setupController (controller, user) {
    controller.set('model', user);
  },

});
