# Allow Google AdSense crawler on most pages.
User-agent: Mediapartners-Google
Disallow: /backend
Disallow: /settings

# By default, disallow all crawlers.
User-agent: *
Disallow: /0
Disallow: /1
Disallow: /2
Disallow: /3
Disallow: /4
Disallow: /5
Disallow: /6
Disallow: /7
Disallow: /8
Disallow: /9
Disallow: /game
Disallow: /search
Disallow: /messages
Disallow: /profile
Disallow: /whoiknow
Disallow: /unlimited
Disallow: /helpdesk
Disallow: /mailurl
Disallow: /register
Disallow: /backend
Disallow: /photos
Disallow: /facebook
Disallow: /settings
Disallow: /onlinemail
Disallow: /unsubscribe
Disallow: /directory

# Full url of latest sitemap.
Sitemap: http://www.twoocdn.com/static/91247816718477006579545945/sitemap.xml.gz