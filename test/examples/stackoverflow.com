User-Agent: *
Disallow: /posts/
Disallow: /posts?
Disallow: /ask/
Disallow: /ask?
Disallow: /questions/ask/
Disallow: /questions/ask?
Disallow: /search/
Disallow: /search?
Disallow: /feeds/
Disallow: /feeds?
Disallow: /users/login/
Disallow: /users/login?
Disallow: /users/logout/
Disallow: /users/logout?
Disallow: /users/filter/
Disallow: /users/filter?
Disallow: /users/authenticate/
Disallow: /users/authenticate?
Disallow: /users/flag-weight/
Disallow: /users/flag-summary/
Disallow: /users/flair/
Disallow: /users/flair?
Disallow: /users/activity/
Disallow: /users/stats/
Disallow: /users/*?tab=accounts
Disallow: /users/rep/show
Disallow: /users/rep/show?
Disallow: /unanswered/
Disallow: /unanswered?
Disallow: /u/
Disallow: /messages/
Disallow: /api/
Disallow: /review/
Disallow: /*/ivc/*
Disallow: /*?lastactivity
Disallow: /users/login/global/request/
Disallow: /users/login/global/request?
Disallow: /questions/*answertab=*
Disallow: /questions/tagged/*+*
Disallow: /questions/tagged/*%20*
Disallow: /questions/*/answer/submit
Disallow: /tags/*+*
Disallow: /tags/*%20*
Disallow: /suggested-edits/
Disallow: /suggested-edits?
Disallow: /ajax/
Disallow: /plugins/
Disallow: /error
Disallow: /gps/
Allow: /

#
# beware, the sections below WILL NOT INHERIT from the above!
# http://www.google.com/support/webmasters/bin/answer.py?hl=en&answer=40360
#

#
# disallow adsense bot, as we no longer do adsense.
#
User-agent: Mediapartners-Google
Disallow: / 

#
# Yahoo bot is evil.
#
User-agent: Slurp
Disallow: /

#
# Yahoo Pipes is for feeds not web pages.
#
User-agent: Yahoo Pipes 1.0
Disallow: /

#
# This isn't really an image
#
User-agent: Googlebot-Image
Disallow: /*/ivc/*
Disallow: /users/flair/

#
# this technically isn't valid, since for some godforsaken reason 
# sitemap paths must be ABSOLUTE and not relative. 
#
Sitemap: /sitemap.xml