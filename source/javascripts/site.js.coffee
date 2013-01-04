normalize_path = (path) ->
  path += '/' unless path.match(/(\/|.html)$/)
  path += 'index.html' if path.match(/\/$/)
  origin = window.location.protocol + "//" + window.location.host
  path = path.replace origin, ""
  path

id_from_path = (path) ->
  id = path.replace('.html', '').replace('/', '_')

current_page = () ->
  current = $('#content section.minipage[data-selected]').attr('id')

page_transition = (ev) ->
  ev.preventDefault()
  current = current_page()
  unless id_from_path(normalize_path(this.href)) == current
    if !!(window.history && history.pushState)
      history.pushState({"id": current}, null, this.href)
    id = "#{$(this).attr('data-link-id')}"
    switch_to_page(id)

switch_to_page = (id) ->
  $('#content section.minipage').hide().removeAttr('data-selected')
  $("##{id}").fadeIn().attr('data-selected', true)

$(document).ready () ->
  # antispam
  elink = $('#email a')
  for at in ['href', 'title']
    elink.attr at, elink.attr(at).replace(/meat-in-a-tin/, '')

  $('#contentlinks li a').each (index, elem) ->
    path = normalize_path(elem.href)
    curpath = normalize_path(window.location.pathname)
    id = id_from_path(path)
    $(elem).attr('data-link-id', id).click page_transition
    if path == curpath
      $('#content section.minipage').first().attr('id', id).attr('data-selected', true)
    else
      $.get elem.href, null, (newDom) ->
        newPage = $(newDom).find('#content section.minipage').hide().
          attr('id', id).appendTo($('#content'))
  if !!(window.history && history.pushState)
    window.addEventListener "popstate", (e) ->
      id = id_from_path(normalize_path(location.pathname))
      switch_to_page(id) unless id == current_page()
