function ready(fn) {
  if (document.attachEvent ?
      document.readyState === "complete" :
      document.readyState !== "loading") {
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}

function hideAntiSpam() {
  var links = document.querySelectorAll('a[href^="mailto:"]')
  Array.prototype.forEach.call(links, function(el, i) {
    el.innerHTML = el.innerHTML.replace(/meat-in-a-tin/, "");
    if (el.getAttribute('href')) {
      el.setAttribute('href', el.getAttribute('href').replace(/meat-in-a-tin/, ""));
    }
    if (el.getAttribute('title')) {
      el.setAttribute('title', el.getAttribute('title').replace(/meat-in-a-tin/, ""));
    }
  });
}

ready(hideAntiSpam);
