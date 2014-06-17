# By accessing Yelp's website you agree to Yelp's Terms of Service, available at
# http://www.yelp.com/static?country=US&p=tos
#
# If you would like to inquire about crawling Yelp, please contact us at
# http://www.yelp.com/contact
#
# As always, Asimov's Three Laws are in effect:
# 1. A robot may not injure a human being or, through inaction, allow a human
#    being to come to harm.
# 2. A robot must obey orders given it by human beings except where such
#    orders would conflict with the First Law.
# 3. A robot must protect its own existence as long as such protection does
#    not conflict with the First or Second Law.

User-Agent: Googlebot
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: Googlebot-Mobile
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: Mediapartners-Google
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: AdsBot-Google
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: archive.org_bot
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: bingbot
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: ia_archiver
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: msnbot
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: ScoutJet
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: Yandex
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: Slurp
Disallow: /1014943
Disallow: /3584794
Disallow: /5787254
Disallow: /adredir?
Disallow: /adtrack
Disallow: /advertise?
Disallow: /biz_attribute
Disallow: /biz_link
Disallow: /biz_share?
Disallow: /biz_update
Disallow: /bookmark?
Disallow: /elite?
Disallow: /events/export/
Disallow: /facebook_connect
Disallow: /flag_content?
Disallow: /gamtarget
Disallow: /mail?
Disallow: /redir?
Disallow: /signup?
Disallow: /sit_rep
Disallow: /spice?
Disallow: /syndicate
Disallow: /talk/new_topic
Disallow: /thanx?
Disallow: /track_metric
Disallow: /weekly/signup
Disallow: /writeareview
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-0
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-1
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-2
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-3
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-4
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-5
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-6
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-7
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-8
Disallow: /biz/outlook-autumn-market-fundamental-catwalk-flimsy-roost-legibility-individualism-grocer-predestination-9

User-Agent: *
Disallow: /
