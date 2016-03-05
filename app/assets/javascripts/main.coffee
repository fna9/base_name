loaderf = ->
  $('.long, .longpaginate .page a, .longpaginate .next a, .longpaginate .prev a, .longpaginate .last a, .longpaginate .first a').on 'click', ->
    $('#loader').modal('show')
    true
  true
$(document).ready loaderf
$(document).on 'page:load', loaderf
dtpick = ->
  $('.datepicker').datetimepicker({locale: 'ru', format: 'DD.MM.YYYY'})
  false
$(document).ready dtpick
$(document).on 'page:load', dtpick
