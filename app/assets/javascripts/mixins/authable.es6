Satori.Authable = Ember.Mixin.create({
  _userSession () {
    if (this.__session) {
      this.getSession();
    } else {
      this.forceGetSession();
    }
    this.userIsLoggedIn = !this.__session.newRecord;
    return this.__session;
  },

  getSession () {
    this.__session = this.store.peekRecord('currentUser', 0);
    return this.__session;
  },

  forceGetSession () {
    this.__session = this.store.findRecord('currentUser', 0);
    return this.__session;
  },

});
