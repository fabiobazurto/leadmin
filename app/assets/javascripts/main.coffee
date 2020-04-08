
$(document).ready ->
  $('input[type=text]').keyup ->
    @value = @value.toUpperCase()
    return
    
$(document).on "turbolinks:load", ->

  width = $(window).width()
  if width <= 480
    $('#main_mnu').addClass 'collapse'
  else
    $('#main_mnu').removeClass 'collapse'
  
  $('input[type=text]').keyup ->
    @value = @value.toUpperCase()
    return

  $('.numberText').keypress (event) ->
    if event.which != 8 and isNaN(String.fromCharCode(event.which))
      event.preventDefault()
      #stop character from entering input
      return
  $('.allow_decimal').on 'input', (evt) ->
    self = $(this)
    self.val self.val().replace(/[^0-9\.]/g, '')
    if (evt.which != 46 or self.val().indexOf('.') != -1) and (evt.which < 48 or evt.which > 57)
      evt.preventDefault()
      return