$(document).ready () ->
  # antispam
  $('a[href^="mailto:"]').each (index, elink) =>
    $(elink).html($(elink).html().replace(/meat-in-a-tin/, ''))
    for at in ['href', 'title']
      $(elink).attr(at, $(elink).attr(at).replace(/meat-in-a-tin/, '')) if $(elink).attr(at)
