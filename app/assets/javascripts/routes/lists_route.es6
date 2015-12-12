// For more information see: http://emberjs.com/guides/routing/

Satori.ListsRoute = Ember.Route.extend({
  model () {
    // this.store.createRecord('list', Satori.List.FIXTURES[0]).save();
    // return Satori.List.FIXTURES; //
    var data = this.store.findAll('list');
    return data;
  },
  afterModel (model, transition) {
    // debugger
  },
  setupController (controller, list) {
    controller.set('model', list);
  },
  // renderTemplate: function () {
  //   this.render('lists');
  // },
});
