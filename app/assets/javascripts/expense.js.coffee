# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ () ->
  $('#wrapper').on('click', '#datepicker', () ->
    $('#datepicker').datepicker()
  )

  $('#expense_form').submit(() ->
    if _.isEmpty($('#expense_date').val())
      false
    if _.isEmpty($('#expense_amount').val())
      false
  )

