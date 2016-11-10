#!/bin/sh

ddns_pw=<ddns_password>
host1=@
host2=www
domain=<namecheap_domain>

ip=`wget http://ipinfo.io/ip -qO -`

curl "https://dynamicdns.park-your-domain.com/update?host=${host1}&domain=${domain}&password=${ddns_pw}&ip=${ip}"
sleep 5
curl "https://dynamicdns.park-your-domain.com/update?host=${host2}&domain=${domain}&password=${ddns_pw}&ip=${ip}"

echo `date` $ip >> /var/log/ddns.log
