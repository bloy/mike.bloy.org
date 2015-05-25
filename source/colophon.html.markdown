---
title: Colophon
menu: true
weight: 10
---
This site was written by hand in [VIM][vim], and designed directly in the
browser. It uses [jQuery][jquery] for behavior, but does not require javascript
to access the content of the site. It will look best in a modern browser, but
will degrade gracefully to display its content in any web browser.
[Susy][susy], [Compass][compass], and [Sass][sass] were used to manage the CSS,
and [Middleman][middleman] was used as a preprocessor.

An [Ansible][ansible] [playbook][source-playbook] is used to deploy the site,
with the help of some [custom reusable roles][roles-source].

The source for this website is [available on Github][source].

Fonts are from [Font Squirrel][fontsquirrel]. The masthead font is [TeX Gyre
Pagella][fs-pagella], and the body font is [TeX Gyre Adventor][fs-adventor].

[Webicons][webicons] are from [Fairhead Creative][fairheadcreative].

[ansible]: http://docs.ansible.com/
[compass]: http://compass-style.org
[fairheadcreative]: http://fairheadcreative.com
[fontsquirrel]: http://www.fontsquirrel.com "Font Squirrel"
[fs-adventor]: http://www.fontsquirrel.com/fonts/TeX-Gyre-Adventor "Font Squirrel: TeX Gyre Adventor"
[fs-pagella]: http://www.fontsquirrel.com/fonts/TeX-Gyre-Pagella "Font Squirrel: TeX Gyre Pagella"
[jquery]: http://jquery.com
[middleman]: http://middlemanapp.com
[roles-source]: https://github.com/bloy/ansible-roles
[sass]: http://sass-lang.com
[source]: https://github.com/bloy/mike.bloy.org
[source-playbook]: https://github.com/bloy/mike.bloy.org/blob/master/deploy.yml
[susy]: http://susy.oddbird.net
[vim]: http://www.vim.org
[webicons]: https://github.com/adamfairhead/webicons
