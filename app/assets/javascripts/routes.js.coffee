
@$daemon_routes = Sammy('body', ->
  # this.use(Sammy.ControllerInject);
  self = this
  
  @get "/", ->
    this.redirect("/#/home/");
    return

  @get "/#/home", ->
    this.redirect("/#/home/");
    return

  @get "/#/home/", ->
    return

  @get "/#/characters", ->
    new CharacterController().index(this);
    return

  @get "/#/characters/new", ->
    new CharacterController().build(this);
    return

  @get "/#/characters/:id", ->
    new CharacterController().show(this);
    return



  return
)
