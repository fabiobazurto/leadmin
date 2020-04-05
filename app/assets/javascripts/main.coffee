
$(document).ready ->
  $('input[type=text]').keyup ->
    @value = @value.toUpperCase()
    return
    
$(document).on "turbolinks:load", ->
  $('input[type=text]').keyup ->
    @value = @value.toUpperCase()
    return

  $('.numberText').keypress (event) ->
    if event.which != 8 and isNaN(String.fromCharCode(event.which))
      event.preventDefault()
      #stop character from entering input
      return
  