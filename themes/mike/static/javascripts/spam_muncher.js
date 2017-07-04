$(document).ready(function() {
  elink = $('#nav_email a');
  elink.attr('href', elink.attr('href').replace(/meat-in-a-tin/, ''));
  elink.attr('title', elink.attr('title').replace(/meat-in-a-tin/, ''));
});
