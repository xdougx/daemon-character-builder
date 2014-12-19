class @CharacterController
	build: (sammy) ->
		$.get "/character/new", (html) ->
			$("#base_container").html(html)
			app = new IApp
			app.addModules({"CharacterNewModule": new CharacterNewModule}).run(null)

	index: (sammy) ->
		$.get "/character", (html) ->
			$("#base_container").html(html)
			# app = new IApp
			# app.addModules({"CharacterNewModule": new CharacterNewModule}).run(null)

	show: (sammy) ->
		$.get "/character/#{sammy.params['id']}", (html) ->
			$("#base_container").html(html)
			# app = new IApp
			# app.addModules({"CharacterNewModule": new CharacterNewModule}).run(null)
