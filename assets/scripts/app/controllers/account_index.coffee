Travis.AccountIndexController = Em.Controller.extend
  needs: ['profile', 'currentUser']
  hooksBinding: 'controllers.profile.hooks'
  allHooksBinding: 'controllers.profile.allHooks'
  hooksWithoutAdminBinding: 'controllers.profile.hooksWithoutAdmin'
  userBinding: 'controllers.currentUser'

  sync: ->
    @get('user').sync()

  toggle: (hook) ->
    hook.toggle()
