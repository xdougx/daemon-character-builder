class @CharacterNewModule
  load_redactor: () ->
    $("#history").redactor toolbarFixedBox: true
  calculate_hp: () ->
    $('#character_status_attributes_constitution, #character_status_attributes_strength').on 'change', (e) ->
      con = parseInt $('#character_status_attributes_constitution').val()
      fr = parseInt $('#character_status_attributes_strength').val()
      hp = Math.round((con+fr)/2)
      $("#character_health_points").val(hp)

  sum_total_attr: () ->
    $("#attributes").find("input").on 'change', (e) ->
      sum_total()
      calc_mod(this)
      calc_total(this)

  sum_total = () ->
    total = 0
    $("#attributes").find("input").each (i, e) -> total += parseInt(e.value)
    $("#total_attr").text(total)
 
  calc_mod = (input) ->
    current_value = parseInt $(input).val()

    container = $(input).parents('.form-group')
    mod = container.find(".mod")

    if current_value >= 1 and current_value <= 2
      mod.text("-3")
    else if current_value >= 3 and current_value <= 4
      mod.text("-2")
    else if current_value >= 5 and current_value <= 8
      mod.text("-1")
    else if current_value >= 9 and current_value <= 14
      mod.text(0)
    else if current_value >= 15 and current_value <= 16
      mod.text("+1")
    else if current_value >= 17 and current_value <= 18
      mod.text("+2")
    else if current_value >= 19 and current_value <= 20
      mod.text("+3")
    else if current_value >= 21 and current_value <= 22
      mod.text("+4")
    else if current_value >= 23 and current_value <= 24
      mod.text("+5")
    else if current_value >= 25 and current_value <= 26
      mod.text("+6")
    else if current_value >= 27 and current_value <= 28
      mod.text("+7")
    else if current_value >= 29 and current_value <= 30
      mod.text("+8")
  
  calc_total = (input) ->
    current_value = parseInt $(input).val()
    container = $(input).parents('.form-group')
    mod = parseInt container.find(".mod").text()
    total = (current_value+mod)*4
    container.find(".total").text(total)

  add_improvement: () ->
    $("#add_improvement").click (event) ->
      event.preventDefault()
      current_improvement = $("#character_improvements option:selected")
      current_improvement.remove()
      current_count = $("#improvement_list").attr("count")

      new_improvement = $(".new_improvement").last().clone()
      new_improvement.find(".improvement_name").text(current_improvement.text())
      new_improvement.find(".improvement_id").val(current_improvement.val())
      new_improvement.find("input").each (i, e) ->
        $(e).removeAttr('disabled')

      improvement_remove_link(new_improvement, current_improvement)
      increment_new_improvement(new_improvement, current_count)
      
      $("#improvement_list").append(new_improvement)
      new_improvement.show()
      return false

  improvement_remove_link = (new_improvement, current_improvement) ->
    $(new_improvement).find(".remove_new_improvement").on 'click', (event) ->
      $(new_improvement).remove()
      $("#character_improvements").append(current_improvement)

  increment_new_improvement = (new_improvement, count) ->
    $(new_improvement).find("input").each ->
      @name = @name.replace(/[0-9]{1,2}/g, count)
      return
    count = parseInt(count) + 1
    $("#improvement_list").attr('count', count)
  add_injurie: () ->
    $("#add_injury").click ->
      current_injury = $("#character_injuries option:selected")
      current_injury.remove()
      current_count = $("#injury_list").attr("count")

      new_injury = $(".new_injury").last().clone()
      new_injury.find(".injury_name").text(current_injury.text())
      new_injury.find(".injury_id").val(current_injury.val())
      new_injury.find("input").each (i, e) ->
        $(e).removeAttr('disabled')

      injury_remove_link(new_injury, current_injury)
      increment_new_injury(new_injury, current_count)
      
      $("#injury_list").append(new_injury)
      new_injury.show()
      false

  injury_remove_link = (new_injury, current_injury) ->
    $(new_injury).find(".remove_new_injury").on 'click', (event) ->
      $(new_injury).remove()
      $("#character_injuries").append(current_injury)

  increment_new_injury = (new_injury, count) ->
    $(new_injury).find("input").each ->
      @name = @name.replace(/[0-9]{1,2}/g, count)
      return
    count = parseInt(count) + 1
    $("#injury_list").attr('count', count)

  add_weapon: () ->
    $("#add_weapon_skill").click ->
      current_weapon_skill = $("#character_weapons_skills option:selected")
      current_weapon_skill.remove()
      current_count = $("#weapon_skill_list").attr("count")

      new_weapon_skill = $(".new_weapon_skill").last().clone()
      new_weapon_skill.find(".weapon_skill_name").text(current_weapon_skill.text())
      new_weapon_skill.find(".weapon_skill_id").val(current_weapon_skill.val())
      new_weapon_skill.find("input").each (i, e) ->
        $(e).removeAttr('disabled')
      
      weapon_remove_link(new_weapon_skill, current_weapon_skill)
      increment_new_weapon_skill(new_weapon_skill, current_count)
      
      $("#weapon_skill_list").append(new_weapon_skill)
      new_weapon_skill.show()
      false

  weapon_remove_link = (new_weapon_skill, current_weapon_skill) ->
    $(new_weapon_skill).find(".remove_new_weapon_skill").on 'click', (event) ->
      $(new_weapon_skill).remove()
      $("#character_weapons_skills").append(current_weapon_skill)

  increment_new_weapon_skill = (new_weapon_skill, count) ->
    $(new_weapon_skill).find("input").each ->
      @name = @name.replace(/[0-9]{1,2}/g, count)
      return
    count = parseInt(count) + 1
    $("#weapon_skill_list").attr('count', count)
  
  add_skill: () ->
    $("#add_skill").click ->
      current_skill = $("#character_skills option:selected")
      current_skill.remove()
      current_count = $("#skill_list").attr("count")

      new_skill = $(".new_skill").last().clone()
      new_skill.find(".skill_name").text(current_skill.text())
      new_skill.find(".skill_id").val(current_skill.val())
      new_skill.find("input").each (i, e) ->
        $(e).removeAttr('disabled')

      skill_remove_link(new_skill, current_skill)
      increment_new_skill(new_skill, current_count)
      
      $("#skill_list").append(new_skill)
      new_skill.show()
      false

  skill_remove_link = (new_skill, current_skill) ->
    $(new_skill).find(".remove_new_skill").on 'click', (event) ->
      $(new_skill).remove()
      $("#character_skills").append(current_skill)

  increment_new_skill = (new_skill, count) ->
    $(new_skill).find("input").each ->
      @name = @name.replace(/[0-9]{1,2}/g, count)
      return
    count = parseInt(count) + 1
    $("#skill_list").attr('count', count)

  save_character: () ->
    $("#form_character_create").on 'submit', (e)->
      e.preventDefault()

      $(this).ajaxSubmit
        success: (data) ->
          window.location.href = "/#/characters"
        error: (response) ->
      false
  tabs: () ->
    $('#helpers a').click (e) ->
      e.preventDefault()
      $(this).tab('show')