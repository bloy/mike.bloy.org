$(document).ready () ->
  # antispam
  elink = $('#email a')
  for at in ['href', 'title']
    elink.attr at, elink.attr(at).replace(/meat-in-a-tin/, '')
