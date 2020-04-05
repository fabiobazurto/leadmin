# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('input[type=text]').keyup ->
    @value = @value.toUpperCase()
    return
    
$(document).on "turbolinks:load", ->
  $('input[type=text]').keyup ->
    @value = @value.toUpperCase()
    return
