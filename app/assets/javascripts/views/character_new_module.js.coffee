class @CharacterNewModule
  calculate_hp: () ->
    $('#character_attributes_char_attributes_constitution, #character_attributes_char_attributes_strength').on 'keyup', (e) ->
      con = parseInt $('#character_attributes_char_attributes_constitution').val()
      fr = parseInt $('#character_attributes_char_attributes_strength').val()
      hp = Math.round((con+fr)/2)
      $("#character_health_points").val(hp)

  add_improvement: () ->
    $("#add_improvement").click (event) ->
      event.preventDefault()
      current_improvement = $("#character_improvements option:selected")
      current_improvement.remove()
      current_count = $("#improvement_list").attr("count")

      new_improvement = $(".new_improvement").last().clone()
      new_improvement.find(".improvement_name").text(current_improvement.text())
      new_improvement.find(".improvement_id").val(current_improvement.val())
      
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


  load_redactor: () ->
    $("#history").redactor toolbarFixedBox: true

  tabs: () ->
    $('#helpers a').click (e) ->
      e.preventDefault()
      $(this).tab('show')