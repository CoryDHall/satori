(function () {
  Satori.List = DS.Model.extend({
    title: DS.attr('string'),
    description: DS.attr('string'),
    author: DS.attr('string'),
    items: DS.attr(),
  });

  Satori.List.FIXTURES = [
 {
   id: 1,
   title: 'Learn Ember.js',
   description: 'hello world!',
   author: 'admin',
   items: []
 },
 {
   id: 2,
   title: '...',
   description: 'it is #{Date.now()}',
   author: 'admin',
   items: []
 },
 {
   id: 3,
   title: 'Profit!',
   description: '',
   author: 'admin',
   items: []
 }
];
})();
