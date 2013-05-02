#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Robert D. Chambers'
SITENAME = u'Rob Chambers Personal Homepage'
SITEURL = ''

TIMEZONE = 'America/New_York'

DEFAULT_LANG = u'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None

# Blogroll
LINKS = (('Blog', 'http://blog.rdchambers.net'),
          ('Photos', 'http://photos.rdchambers.net'),
          ('Creare, Inc.', 'http://www.creare.com/'),
          ('Planet Python', 'http://planet.python.org/'),
          ('Stanford Microfluidics', 'http://microfluidics.stanford.edu'),
          ('Harvey Mudd College', 'http://www.hmc.edu'),
          )

# Social widget
SOCIAL = (('Github', 'https://github.com/robchambers'),
          ('LinkedIn', 'http://www.linkedin.com/pub/rob-chambers/3/70b/a23'),
          ('Facebook', 'https://www.facebook.com/rob.chambers.1422')
          )

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True

STATIC_PATHS = ['images', 'static', 'pubs']

GITHUB_USERNAME = u'robchambers'
GITHUB_BADGE = True
GITHUB_URL = 'https://github.com/robchambers'

# Domain name
FILES_TO_COPY = (('CNAME', 'CNAME'),)

THEME = "theme"

PIC_PATH = "static/images/with_fozzie.jpg"
