// for more details see: http://emberjs.com/guides/models/defining-models/

Satori.User = DS.Model.extend({
  name: DS.attr('string'),
  prefs: DS.attr(),
});
