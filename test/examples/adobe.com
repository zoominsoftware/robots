# The use of robots or other automated means to access the Adobe site
# without the express permission of Adobe is strictly prohibited.
# Notwithstanding the foregoing, Adobe may permit automated access to
# access certain Adobe pages but solely for the limited purpose of
# including content in publicly available search engines. Any other
# use of robots or failure to obey the robots exclusion standards set
# forth at http://www.robotstxt.org/ is strictly prohibited.

# Details about Googlebot available at: http://www.google.com/bot.html
# The Google search engine can see everything
User-agent: gsa-crawler-www 
Disallow: /licensing/distribution/strategies/
Disallow: /events/ciocouncil/
Disallow: /events/executivecouncil/
Disallow: /devnet-archive/
Disallow: /devnet/archive
Disallow: /limited/
Disallow: /*/limited/
Disallow: /special/
Disallow: /livedocs/
Disallow: /solutions/smb.html
Disallow: /*.sql$
Disallow: /fr/volume-licensing/non-profit.html
Disallow: /fr/volume-licensing/how-to-buy/enterprise-agreement-enrollment-form.html 
Disallow: /fr/volume-licensing/government.html
Disallow: /fr/volume-licensing/government/cumulative-licensing-program.html
Disallow: /jp/supportservice/custsupport/SOLUTIONS/
Disallow: /products/cs6.html

# The Omniture search engine can see everything
User-agent: Atomz/1.0
Disallow: /licensing/distribution/strategies/
Disallow: /events/ciocouncil/
Disallow: /events/executivecouncil/
Disallow: /devnet-archive/
Disallow: /devnet/archive
Disallow: /limited/
Disallow: /*/limited/
Disallow: /special/
Disallow: /livedocs/
Disallow: /solutions/smb.html
Disallow: /*.sql$
Disallow: /fr/volume-licensing/non-profit.html
Disallow: /fr/volume-licensing/how-to-buy/enterprise-agreement-enrollment-form.html 
Disallow: /fr/volume-licensing/government.html
Disallow: /fr/volume-licensing/government/cumulative-licensing-program.html
Disallow: /jp/supportservice/custsupport/SOLUTIONS/
Disallow: /products/cs6.html

User-agent: *
Disallow: /2006/
Disallow: /2007/
Disallow: /adobefacts/
Disallow: /Amber/
Disallow: /Applications/
Disallow: /Apps/
Disallow: /cfusion/gpr/
Disallow: /cfusion/search/ 
Disallow: /cgi-local/
Disallow: /de/products/index-notabs.html
Disallow: /de/products/index-tabs.html
Disallow: /desdev/
Disallow: /devnet/tagsearch
Disallow: /devnet-archive/
Disallow: /devnet/archive
Disallow: /DRHM/
Disallow: /emea/eemeachannel/
Disallow: /events/ciocouncil/
Disallow: /events/executivecouncil/
Disallow: /featuredproducts/
Disallow: /google_indexing/
Disallow: /knowledgebase/
Disallow: /licensing/distribution/strategies/
Disallow: /limited/
Disallow: /*/limited/
Disallow: /livedocs/
Disallow: /newsfeatures/
Disallow: /prodindex/
Disallow: /products/flashplayer/distribution3.html
Disallow: /proindex/
Disallow: /publications/
Disallow: /solutions/solutions-social.html 
Disallow: /solutions/solutions-touchapps.html
Disallow: /special/
Disallow: /supportservice/
Disallow: /webstudio/
Disallow: /products/acrobat/ax0013-test1.html 
Disallow: /products/acrobat/ax0013-test2.html 
Disallow: /products/acrobat/ax0013-test3.html
Disallow: /solutions/smb.html
Disallow: /*.sql$
Disallow: /fr/volume-licensing/non-profit.html
Disallow: /fr/volume-licensing/how-to-buy/enterprise-agreement-enrollment-form.html 
Disallow: /fr/volume-licensing/government.html
Disallow: /fr/volume-licensing/government/cumulative-licensing-program.html
Disallow: /jp/supportservice/custsupport/SOLUTIONS/
Disallow: /products/cs6.html

# sitemap included as per Bug130830
Sitemap: http://www.adobe.com/desktop.xml
Sitemap: http://www.adobe.com/enterprise.xml
Sitemap: http://www.adobe.com/ap/ap-sitemap.xml
Sitemap: http://www.adobe.com/at/at-sitemap.xml
Sitemap: http://www.adobe.com/au/au-sitemap.xml
Sitemap: http://www.adobe.com/be_en/be-en-sitemap.xml
Sitemap: http://www.adobe.com/be_fr/be-fr-sitemap.xml
Sitemap: http://www.adobe.com/be_nl/be-nl-sitemap.xml
Sitemap: http://www.adobe.com/bg/bg-sitemap.xml
Sitemap: http://www.adobe.com/br/br-sitemap.xml
Sitemap: http://www.adobe.com/ca/ca-sitemap.xml
Sitemap: http://www.adobe.com/ch_de/ch-de-sitemap.xml
Sitemap: http://www.adobe.com/ch_fr/ch-fr-sitemap.xml
Sitemap: http://www.adobe.com/ch_it/ch-it-sitemap.xml
Sitemap: http://www.adobe.com/cn/cn-sitemap.xml
Sitemap: http://www.adobe.com/cz/cz-sitemap.xml
Sitemap: http://www.adobe.com/de/de-sitemap.xml
Sitemap: http://www.adobe.com/dk/dk-sitemap.xml
Sitemap: http://www.adobe.com/ee/ee-sitemap.xml
Sitemap: http://www.adobe.com/es/es-sitemap.xml
Sitemap: http://www.adobe.com/fi/fi-sitemap.xml
Sitemap: http://www.adobe.com/fr/fr-sitemap.xml
Sitemap: http://www.adobe.com/hk_zh/hk-zh-sitemap.xml
Sitemap: http://www.adobe.com/hr/hr-sitemap.xml
Sitemap: http://www.adobe.com/hu/hu-sitemap.xml
Sitemap: http://www.adobe.com/ie/ie-sitemap.xml
Sitemap: http://www.adobe.com/in/in-sitemap.xml
Sitemap: http://www.adobe.com/it/it-sitemap.xml
Sitemap: http://www.adobe.com/jp/jp-sitemap.xml
Sitemap: http://www.adobe.com/kr/kr-sitemap.xml
Sitemap: http://www.adobe.com/la/la-sitemap.xml
Sitemap: http://www.adobe.com/lt/lt-sitemap.xml
Sitemap: http://www.adobe.com/lu_en/lu-en-sitemap.xml
Sitemap: http://www.adobe.com/lv/lv-sitemap.xml
Sitemap: http://www.adobe.com/nl/nl-sitemap.xml
Sitemap: http://www.adobe.com/nz/nz-sitemap.xml
Sitemap: http://www.adobe.com/pl/pl-sitemap.xml
Sitemap: http://www.adobe.com/pt/pt-sitemap.xml
Sitemap: http://www.adobe.com/ro/ro-sitemap.xml
Sitemap: http://www.adobe.com/rs/rs-sitemap.xml
Sitemap: http://www.adobe.com/ru/ru-sitemap.xml
Sitemap: http://www.adobe.com/se/se-sitemap.xml
Sitemap: http://www.adobe.com/si/si-sitemap.xml
Sitemap: http://www.adobe.com/sk/sk-sitemap.xml
Sitemap: http://www.adobe.com/tr/tr-sitemap.xml
Sitemap: http://www.adobe.com/tw/tw-sitemap.xml
Sitemap: http://www.adobe.com/ua/ua-sitemap.xml
Sitemap: http://www.adobe.com/uk/uk-sitemap.xml
Sitemap: http://www.adobe.com/lu_de/lu-de-sitemap.xml
Sitemap: http://www.adobe.com/lu_fr/lu-fr-sitemap.xml