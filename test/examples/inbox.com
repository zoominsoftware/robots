User-Agent: *
Disallow: /_portal/

User-Agent: msnbot
Crawl-delay: 1
Disallow: /xfb_redir.aspx
Disallow: /_portal/

User-Agent: msnbot-newsblogs
Disallow: /xfb_redir.aspx
Disallow: /_portal/

User-Agent: msnbot-products
Crawl-delay: 1
Disallow: /xfb_redir.aspx
Disallow: /_portal/

User-Agent: msnbot-media
Crawl-delay: 1
Disallow: /xfb_redir.aspx
Disallow: /_portal/

User-Agent: Yandex
Disallow: /search/
