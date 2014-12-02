class @CharacterNewModule
  calculate_hp: () ->
    $('#character_attributes_char_attributes_constitution, #character_attributes_char_attributes_strength').on 'keydown', (e) ->
      con = $('#character_attributes_char_attributes_constitution').val()
      fr = $('#character_attributes_char_attributes_strength').val()
      hp = Math.round((parseInt(con)+parseInt(fr))/2)
      $("#character_health_points").val(hp)

  add_improvement: () ->
    $("#add_improvement").click ->
      new_improvement = $("#improvements .container_improvement").last().clone()
      new_improvement = count_increment(new_improvement)
      count = $(new_improvement).attr("count")
      $(new_improvement).find("input").each ->
        @name = @name.replace(/[0-9]{1,2}/g, count)
        @value = ""
        return

      $(new_improvement).find("label").each ->
        _for = $(this).attr("for")
        $(this).attr "for", _for.replace(/[0-9]{1,2}/g, count)
        return

      $("#improvements").append "<hr>"
      $("#improvements").append new_improvement
      false

  add_injurie: () ->
    $("#add_injurie").click ->
      new_improvement = $("#injuries .container_injuries").last().clone()
      new_improvement = count_increment(new_improvement)
      count = $(new_improvement).attr("count")
      $(new_improvement).find("input").each ->
        @name = @name.replace(/[0-9]{1,2}/g, count)
        @value = ""
        return

      $(new_improvement).find("label").each ->
        _for = $(this).attr("for")
        $(this).attr "for", _for.replace(/[0-9]{1,2}/g, count)
        return

      $("#injuries").append "<hr>"
      $("#injuries").append new_improvement
      false


  count_increment = (improvement) ->
    count = parseInt($(improvement).attr("count"))
    $(improvement).attr "count", (count + 1)
    improvement

  load_redactor: () ->
    $("#history").redactor toolbarFixedBox: true