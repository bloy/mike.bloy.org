function fix_nospam(text) {
  return text.replace(/meat-in-a-tin/, '');
}

function contentClick(clicked) {
  section = clicked.attr('href');
  if ($(section).size() == 0) {
    return;
  }
  $('#content section').hide();
  $(section).fadeIn();
}

$(document).ready(
  function() {
    $('#content section').hide();
    var section = '#intro';
    if ($(window.location.hash).size() > 0) {
      section = window.location.hash
    }
    $(section).show();
    link = $('#email a');
    link.attr('href', fix_nospam(link.attr('href')));
    link.attr('title', fix_nospam(link.attr('title')));
    $('#contentlinks a').click(function() { contentClick($(this)); });
  });
