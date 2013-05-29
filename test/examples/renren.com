# Robots.txt file from http://www.renren.com
# All robots will spider the domain

User-agent: *
Allow: /
Disallow: /profile.do*
Disallow: /getuser.do*