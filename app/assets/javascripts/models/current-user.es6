// for more details see: http://emberjs.com/guides/models/defining-models/

Satori.CurrentUser = DS.Model.extend({
  newRecord: DS.attr(),
  user: DS.belongsTo('user'),
});
