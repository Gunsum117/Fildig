$(document).on 'turbolinks:load', ->
  $('#film-tags').tagit
    fieldName:   'tag_list'
    singleField: true
  $('#film-tags').tagit()
  tag_string = $("#tag_hidden").val()
  try
    tag_list = tag_string.split(',')
    for tag in tag_list
      $('#film-tags').tagit 'createTag', tag
  catch error