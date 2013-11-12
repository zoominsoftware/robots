#  Hello World Web Hosting
# http://www.helloworldweb.com

Sitemap: http://helloworldweb.com/sitemap.xml

User-agent: *
Disallow: /cgi-bin/
Disallow: /inc/
Disallow: /portfolio/
Disallow: /images/
Disallow: /sandbox/
Disallow: /no_crawl/
Disallow: /login/
Disallow: /clients/
Disallow: /chat/
Disallow: /test/
Disallow: /designcalendar/
Disallow: /apollo/
# Disallow: /clients/submitticket.php*

# User-agent: Googlebot
# Allow: /

User-agent: Googlebot-Image
Disallow: /

User-agent: BLEXBot
Disallow: /

User-agent: YYSpider
Disallow: /

User-agent: meanpathbot
Disallow: /

User-agent: WBSearchBot
Disallow: /

User-agent: AhrefsBot
Disallow: /

User-agent: YisouSpider
Disallow: /

User-agent: 008
Disallow: /

User-agent: UnisterBot
Disallow: /

User-agent: Ezooms/1.0
Disallow: /

User-agent: CareerBot/1.1
Disallow: /

User-agent: Comodo-Certificates-Spider
Disallow: /

User-agent: AcoonBot/4.11.1
Disallow: /

User-agent: SEOkicks-Robot
Disallow: /

User-agent: msnbot-media
Disallow: /

User-agent: Wotbox/2.01
Disallow: /

User-agent: Riddlerbot
Disallow: /

User-agent: CatchBot
Disallow: /

User-agent: oBot/2.3.1
Disallow: /

User-agent: bitlybot
Disallow: /

User-agent: CompSpyBot
Disallow: /

User-agent: wotbox
Disallow: /

User-agent: SearchmetricsBot
Disallow: /

User-agent: spotinfluence/Nutch-1.4
Disallow: /
