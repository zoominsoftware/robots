User-Agent: MJ12bot
Disallow:

User-agent: Googlebot
Allow: /access.phtml
Allow: /connections/

User-agent: Yandex
Disallow: /access.phtml
Disallow: /connections/
Host: badoo.com

User-agent: *
Disallow: /access.phtml
Disallow: /connections/

Sitemap: http://badoo.com/sitemap.all.xml
