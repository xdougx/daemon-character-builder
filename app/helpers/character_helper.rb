module CharacterHelper
	def improvement_select options = {}
		options = Improvement.all.map {|i| [i.name, i.id] }
    select_tag "provements", options_for_select(options), class: "form-control", id: "#character_improvements_id", prompt: "Selecione um Aprimoramento"
  end

end
