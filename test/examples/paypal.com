### BEGIN FILE ###

# PayPal robots.txt file 

User-agent: *
Disallow: /xclick-auction/
Disallow: /affil/
Disallow: /*?cmd=_flow
Disallow: /*?SESSION
Disallow: /*?cmd=_s-xclick
Disallow: /subscriptions/
Disallow: /ireceipt/get/
Disallow: /ireceipt/get?
Disallow: /*?cmd=_pay-inv
Disallow: /getCallUsInfoData/
Disallow: /*?action=callus
Disallow: /loadHelpcenterDecouplePage
Disallow: /limited-release/
Disallow: /files/developer/
Disallow: /*?content_ID=developer
Disallow: /ebook/
Disallow: /IntegrationCenter/
Disallow: /*/limited-release
Disallow: /*/ebook
Disallow: /*/IntegrationCenter

Visit-time: 0200-1200    # GMT  (6:00pm pst to 4:00am pst)
Crawl-Delay: 15          # 15 seconds per page
Request-rate: 1/15       # 1 page in 15 seconds

### END FILE ###



