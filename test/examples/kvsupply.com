
# KV Supply.

Sitemap: http://www.kvsupply.com/sitemap.xml

User-Agent: *
Disallow: /cart
Disallow: /checkout
Disallow: /myAccount
Disallow: /order-submitted
Disallow: /*.pdf
Disallow: /*.asp
Disallow: /*.aspx
Disallow: /*redirect.php?division=1&key=/kvvet/
Disallow: /*search?do
Disallow: /*search/&do=s
Disallow: /*?a=
Disallow: /*naturallsteak

User-agent: Googlebot
Disallow: /*pet-supplies
Disallow: /*naturallsteak
Allow: /

User-agent: Bingbot
Disallow: /*?
Disallow: /*naturallsteak
Allow: /

User-agent: YandexBot
Disallow: /*&
Disallow: /*?
Crawl-delay: 5

User-Agent: *
Disallow: /

User-Agent: meanpathbot
Disallow: /

User-Agent: ccbot
Disallow: /

User-agent: MJ12bot
Disallow: /

User-agent: Baiduspider
Disallow: /

User-agent: BLEXBot
Disallow: /

User-agent: Exabot
Disallow: /

User-agent: DotBot
Disallow: /

User-agent: niki-bot
Disallow: /
