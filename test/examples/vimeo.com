# You know, for robots
#
# robots@vimeo.com

Sitemap: http://vimeo.com/sitemap.xml

User-agent: Mediapartners-Google
Disallow:

User-agent: *
Crawl-delay: 0
Disallow: /download/
Disallow: /moogaloop/
Disallow: /couchmode/
Disallow: /musicstore/preview
Disallow: /musicstore/download
Disallow: /search/
Disallow: /search?

Allow: /
