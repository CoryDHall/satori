Satori.List = DS.Model.extend({
  title: DS.attr('string'),
  items: DS.attr(),
  config: DS.attr(),
  creator: DS.attr(),
});

(function () {
  Satori.List.FIXTURES = [
 {
  //  id: 1,
   title: 'Learn Ember.js',
   description: 'hello world!',
   config: {
     author: 'admin',
   },
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
