/* jshint node: true */
'use strict';

module.exports = {
  name: 'ember-simwms-session',
  included: function(app) {
    this._super.included(app);
    this.app.import(app.bowerDirectory + "/js-cookie/src/js.cookie.js");
  }
};
