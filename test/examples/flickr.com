User-agent: Twitterbot
Disallow: /report_abuse.gne
Disallow: /abuse
Disallow: /signin
Disallow: /search
Disallow: /groups/10millionphotos
Disallow: /photos/youpy
Disallow: /photos/i_love_u_get_away_from_me/
Disallow: /faves-i_love_u_get_away_from_me
Disallow: /photos/gbachelie

User-agent: *
Disallow: /gp/
Disallow: /report_abuse.gne
Disallow: /abuse
Disallow: /signin
Disallow: /search
Disallow: /groups/10millionphotos
Disallow: /photos/youpy
Disallow: /photos/i_love_u_get_away_from_me/
Disallow: /faves-i_love_u_get_away_from_me
Disallow: /photos/gbachelie
User-agent: bingbot
Crawl-delay: 5
User-agent: msnbot
Crawl-delay: 5

