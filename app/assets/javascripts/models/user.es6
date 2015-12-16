// for more details see: http://emberjs.com/guides/models/defining-models/

Satori.User = DS.Model.extend({
  username: DS.attr('string'),
  attributes: DS.attr(),
});
