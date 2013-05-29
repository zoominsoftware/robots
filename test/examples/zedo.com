User-agent: *
# Directories
Disallow: /cgi-bin/
Disallow: /wp-admin/
Disallow: /trackback/
Disallow: /wp-includes/
Disallow: /comment-page-
Disallow: /wp-content/themes/
Disallow: /wp-content/plugins/
# Files
Disallow: /xmlrpc.php
Disallow: /readme.html
Disallow: /license.txt
# Paths (not clean urls)
Disallow: /?s=*
Disallow: /*?*
Disallow: /*.php$
Disallow: /*.js$

Sitemap: http://www.zedo.com/sitemap_index.xml