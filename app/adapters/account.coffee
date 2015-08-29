`import Ember from 'ember'`
`import DS from 'ember-data'`
`import ENV from '../config/environment'`

volatile = ->
  Ember.computed(arguments...).volatile()

AccountAdapter = DS.ActiveModelAdapter.extend
  host: ENV.simwmsHost
  namespace: ENV.simwmsNamespace
  headers: volatile "currentUser.rememberToken", ->
    "simwms-account-session": @get("currentUser.rememberToken")

`export default AccountAdapter`