`import Ember from 'ember'`
`import DS from 'ember-data'`
`import {Singleton} from 'ember-simwms-session'`
`import ENV from '../config/environment'`

volatile = ->
  Ember.computed(arguments...).volatile()

AccountAdapter = DS.ActiveModelAdapter.extend Singleton,
  host: ENV.host
  namespace: ENV.namespace
  headers: volatile "currentUser.rememberToken", ->
    "simwms-account-session": @get("currentUser.rememberToken")

`export default AccountAdapter`