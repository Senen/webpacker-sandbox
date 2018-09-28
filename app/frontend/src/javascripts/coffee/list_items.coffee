console.log 'Hello world from list items coffeescript'

$(document).ready ->
  $('#searchField').on 'blur', (e) ->
    $(this).closest('form').submit()