---
title: Pelican setup
date: 2018-04-14
category: meta
tags: pelican, python, blog, git, markdown
summary: A description of the workflow used to write an article for this blog.
---

The [Pelican][pelican] setup and [Markdown][markdown] source of this blog are
kept in [Git][git] for version control, pushed to a private git repository.
Occasionally I'll remember to push to the public [GitHub][github-source] mirror
as well.

Pelican is a static html generator written in [Python][python]. I've added css
processing to its default `Makefile`, using [postcss][postcss] and
[cssnext][cssnext].

I maintain a python virtualenv with Pelican and other needed packages. At need,
the directory can be rebuilt with a combination of pipenv (for the python) and
yarn (for the nodejs packages). Articles and pages are written in Markdown.
Finally, a `make publish` and `make rsync_upload` command on the command line
will generate and upload the site.

This setup offers several advantages over writing the html pages by hand:

1. I can change the site look and feel at a whim, and change it on all pages by
   regenerating them all with one command.
2. When writing content, I can focus on writing (essentially) plain text and
   ignore things like look-and-feel.
3. Since the content is markdown, and the templates are python jinja2 html
   templates, I can use the same tools to write this site (vim for editing,
   [linux-as-ide][linuxide], git for version control) that I use every day for
   writing code professionally.

[cssnext]: http://cssnext.io
[git]: https://git-scm.com/
[github-source]: https://github.com/bloy/mike.bloy.org
[linuxide]: https://sanctum.geek.nz/arabesque/series/unix-as-ide/
[markdown]: https://daringfireball.net/projects/markdown/
[pelican]: http://getpelican.com/
[postcss]: http://postcss.org
[python]: https://www.python.org/
