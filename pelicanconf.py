#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Mike Bloy'
SITENAME = 'Mike Bloy'
SITEURL = ''

PATH = 'content'

TIMEZONE = 'America/Chicago'

DEFAULT_LANG = 'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

PAGE_URL = '{slug}'
PAGE_SAVE_AS = '{slug}/index.html'

TAGS_SAVE_AS = ''
TAG_SAVE_AS = ''
CATEGORY_SAVE_AS = ''
CATEGORIES_SAVE_AS = ''
AUTHOR_SAVE_AS = ''
AUTHORS_SAVE_AS = ''
ARCHIVES_SAVE_AS = ''

# Blogroll
LINKS = (('Pelican', 'http://getpelican.com/'),
         ('Python.org', 'http://python.org/'),
         ('Jinja2', 'http://jinja.pocoo.org/'),
         ('You can modify those links in your config file', '#'),)

# Social widget
SOCIAL = (('You can add links in your config file', '#'),
          ('Another social link', '#'),)

DEFAULT_PAGINATION = 10

THEME = 'themes/mike'

PLUGIN_PATHS = ['plugins']
PLUGINS = [
    'pelican-md-metayaml',
    'pelican-page-order',
]

STATIC_PATHS = [
    'static',
]
EXTRA_PATH_METADATA = {
    'static/keybase.txt': {'path': 'keybase.txt'},
    'static/robots.txt': {'path': 'robots.txt'},
}


# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True
