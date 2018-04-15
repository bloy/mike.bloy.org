#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = 'Mike Bloy'
SITENAME = 'Mike Bloy'
SITEURL = ''

PATH = 'content'

TIMEZONE = 'America/Chicago'

DEFAULT_LANG = 'en'
DEFAULT_DATE_FORMAT = '%A, %d %B %Y'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

ARTICLE_URL = 'blog/{date:%Y}/{date:%m}/{slug}/'
ARTICLE_SAVE_AS = 'blog/{date:%Y}/{date:%m}/{slug}/index.html'
PAGE_URL = '{slug}.html'
PAGE_SAVE_AS = '{slug}.html'

TAGS_SAVE_AS = 'tag/index.html'
TAG_URL = '/tag/{slug}/'
TAG_SAVE_AS = 'tag/{slug}/index.html'
CATEGORY_URL = '/category/{slug}/'
CATEGORY_SAVE_AS = 'category/{slug}/index.html'
CATEGORIES_SAVE_AS = 'category/index.html'
AUTHOR_SAVE_AS = ''
ARCHIVES_SAVE_AS = 'blog/archives/index.html'
YEAR_ARCHIVE_SAVE_AS = 'blog/{date:%Y}/index.html'
MONTH_ARCHIVE_SAVE_AS = 'blog/{date:%Y}/{date:%m}/index.html'
INDEX_SAVE_AS = 'index.html'

RSS_FEED_SUMMARY_ONLY = False

DEFAULT_PAGINATION = 10

THEME = 'themes/mike'

PLUGIN_PATHS = ['plugins']
PLUGINS = [
    'pelican-md-metayaml',
    'pelican-page-order',
    'photos',
    'summary',
]

STATIC_PATHS = [
    'images',
    'static',
]
EXTRA_PATH_METADATA = {
    'static/keybase.txt': {'path': 'keybase.txt'},
    'static/robots.txt': {'path': 'robots.txt'},
}

DEFAULT_PAGINATION = 10

PHOTO_LIBRARY = "~/web_albums"

PHOTO_EXIF_COPYRIGHT_AUTHOR = 'Mike Bloy'
PHOTO_EXIF_COPYRIGHT = 'COPYRIGHT'
PHOTO_RESIZE_JOBS = 4;
PHOTO_THUMB = (192, 144, 60);

# Uncomment following line if you want document-relative URLs when developing
#RELATIVE_URLS = True
