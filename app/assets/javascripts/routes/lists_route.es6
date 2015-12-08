// For more information see: http://emberjs.com/guides/routing/

Satori.ListsRoute = Ember.Route.extend({
  model () {
    return Satori.List.FIXTURES; // this.store.findAll('list');
  },
  setupController (controller, list) {
    controller.set('model', list);
  },
  // renderTemplate: function () {
  //   this.render('lists');
  // },
});
