# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  types = $('#ad_type_id').html()
  console.log(types)
  $('#ad_category_id').change ->
    category = $('#ad_category_id :selected').text()
    options = $(types).filter("optgroup[label='#{category}']").html()
    console.log(options)
    if options
      $('#ad_type_id').html(options)
    else
      $('#ad_type_id').empty()