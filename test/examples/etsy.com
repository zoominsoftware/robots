User-agent: Spinn3r
Disallow: /
User-agent: *
Disallow: /assets/
Disallow: /css/
Disallow: /flash/
Disallow: /functions/
Disallow: /js/
Disallow: /maintenance/
Disallow: /planb/
Disallow: /static/
Disallow: /akamai/
Disallow: /add_favorite_shop.php
Disallow: /hearts_me.php
Disallow: /login.php
Disallow: /signin
Disallow: /logout.php
Disallow: /forgot_password.php
Disallow: /transaction/
Disallow: /view_transaction.php
Disallow: /baseline.php
Disallow: /your_etsy.php
Disallow: /create_listing
Disallow: /edit_listing
Disallow: /cart/
Disallow: /convo_new.php
Disallow: /conversations/new
Disallow: /remove/
Disallow: /emails/
Disallow: /registry/*
Disallow: /your/*
Disallow: /locale/overlay
Disallow: /locale/overlay_secure
Disallow: /mailinglist/
Allow: /mailinglist/email/
Allow: /registry
Allow: /registry/$
Allow: /registry/wedding-gift-ideas
Noarchive: /people/
 

Sitemap: http://www.etsy.com/etsymap_featured_seller.xml.gz
Sitemap: http://www.etsy.com/etsymap_listing_50m_sitemap_index.xml
Sitemap: http://www.etsy.com/etsymap_listing_100m_sitemap_index.xml
Sitemap: http://www.etsy.com/etsymap_shop_sitemap_index.xml
Sitemap: http://www.etsy.com/etsymap_shop_section_sitemap_index.xml
Sitemap: http://www.etsy.com/etsymap_feedback_index_sitemap_index.xml
Sitemap: http://www.etsy.com/categories_feed_sitemap.xml 

 
# 
# What's up? 
#   \
# 
#    -----
#   | . . |
#    -----
#  \--|-|--/
#     | |
#  |-------|

