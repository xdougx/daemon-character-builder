class @CharacterController
	build: (sammy) ->
		$.get "/character/new", (html) ->
			$("#base_container").html(html)
			app = new IApp
			app.addModules({"CharacterNewModule": new CharacterNewModule}).run(null)