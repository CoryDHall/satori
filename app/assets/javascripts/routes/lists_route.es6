// For more information see: http://emberjs.com/guides/routing/

Satori.ListsRoute = Ember.Route.extend(Satori.Authable, {
  model () {
    // this.store.createRecord('list', Satori.List.FIXTURES[0]).save();
    var data = this.store.findAll('list');
    return data;
  },
  setupController (controller, lists) {
    controller.set('model', lists);
    controller.set('session', this.getSession());
  },
});
