# This file was generated on Tue, 17 Jun 2014 08:58:47 +0000
# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see http://en.wordpress.com/firehose/ for more details.

Sitemap: http://wordpress.com/sitemap.xml
Sitemap: http://wordpress.com/news-sitemap.xml

User-agent: IRLbot
Crawl-delay: 3600

User-agent: *
Disallow: /next/

User-agent: *
Disallow: /mshots/v1/

# har har
User-agent: *
Disallow: /activate/

User-agent: *
Disallow: /wp-login.php

User-agent: *
Disallow: /signup/

User-agent: *
Disallow: /related-tags.php

User-agent: *
Disallow: /public-api/

# MT refugees
User-agent: *
Disallow: /cgi-bin/

User-agent: *
Disallow: /wp-admin/
Disallow: /wp-includes/
