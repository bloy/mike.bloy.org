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

# Social widget
SOCIAL = (
    ('GitHub', 'https://github.com/bloy'),
    ('LinkedIn', 'https://www.linkedin.com/in/mikebloy'),
    ('Stack Exchange',
     'https://stackexchange.com/users/1296619/bloy?tab=accounts'),
    ('Google+', 'https://plus.google.com/+MikeBloy/about'),
    ('Facebook', 'https://www.facebook.com/mbloy'),
    ('Twitter', 'https://twitter.com/mikebloy'),
    ('Keybase', 'https://keybase.io/bloy'),
)

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
