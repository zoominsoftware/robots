# See http://www.robotstxt.org/wc/norobots.html for documentation on how to use the robots.txt file
#
# To ban all spiders from the entire site uncomment the next two lines:
User-Agent: *
Sitemap: http://fiverr.com/sitemap_gigs_index.xml.gz
Sitemap: http://fiverr.com/sitemap_users_index.xml.gz
Sitemap: http://fiverr.com/sitemap_categories_index.xml.gz
Sitemap: http://fiverr.com/sitemap_collections_index.xml.gz
Sitemap: http://fiverr.com/sitemap_tags_index.xml.gz
Disallow: /terms_of_service
Disallow: /conversations/
Disallow: /s/
Disallow: */pinned_flashes/*
Disallow: /gigs/*/share/
Disallow: /gigs/*/share?*
Disallow: /gigs/*/share?*
Disallow: /specials/*
Disallow: /categories/silly
Disallow: /categories/fifa
Disallow: /categories/Halloween
Disallow: /categories/Postcards
Disallow: /purchases
Disallow: /user_sessions
Disallow: /users/
Disallow: /gigs/*?
Disallow: /collections/*?
Disallow: /categories/*?
Disallow: /counter/*?
Disallow: /counter/
Disallow: /counter