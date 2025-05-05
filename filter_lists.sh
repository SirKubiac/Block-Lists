#!/bin/bash

export GIT_ASKPASS=echo
export GIT_USERNAME=
export GIT_PASSWORD=

# Herunterladen der Listen
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/0Zinc/easylist.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_1.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/adaway/hosts.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_2.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/blocklistproject/hosts.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_3.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/blocklistproject/youtube.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_4.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/craiu/mobiletrackers.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_5.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/crazy-max/spy.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_6.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/DandelionSprout.GameConsoleAdblockList.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_7.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/disconnectme/simple-ad.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_8.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/FadeMind/UncheckyAds.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_9.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/AdguardDNS.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_10.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/Admiral.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_11.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/Easylist.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_12.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/Prigent-Ads.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_13.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/MajkiIT/SmartTV-ads.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_14.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/r-a-y/AdguardMobileAds.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_15.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/sefinek.hosts.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_16.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/ShadowWhisperer/Ads.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_17.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/yoyo/ads-trackers-etc.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_18.txt

wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/0Zinc/easyprivacy.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_1.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/frogeye/firstparty-trackers-hosts.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_2.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/MajkiIT/adguard-mobile-host.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_3.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/neodevpro/host.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_4.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/quidsup/trackers-hosts.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_5.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/sefinek.hosts.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_6.txt

wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.amazon.txt -P /var/filter_lists/ -O /var/filter_lists/Native_1.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.apple.txt -P /var/filter_lists/ -O /var/filter_lists/Native_2.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.huawei.txt -P /var/filter_lists/ -O /var/filter_lists/Native_3.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.samsung.txt -P /var/filter_lists/ -O /var/filter_lists/Native_4.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.tiktok.txt -P /var/filter_lists/ -O /var/filter_lists/Native_5.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.tiktok.extended.txt -P /var/filter_lists/ -O /var/filter_lists/Native_6.txt

wget https://blocklist.sefinek.net/generated/v1/adguard/social/facebook.txt -P /var/filter_lists/ -O /var/filter_lists/Facebook.txt

wget https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/wildcard/doh-onlydomains.txt -P /var/filter_lists/ -O /var/filter_lists/DoH_1.txt
wget https://raw.githubusercontent.com/SirKubiac/Block-Lists/refs/heads/main/DoH_White_List.txt -P /var/filter_lists/ -O /var/filter_lists/DoH_2.txt


# Entfernt Zeilen beginnend mit '!'
for i in {1..18}; do
    sed -i '/^!/d' "/var/filter_lists/Ads_${i}.txt"
done
for i in {1..6}; do
    sed -i '/^!/d' "/var/filter_lists/Tracker_${i}.txt"
done
for i in {1..6}; do
    sed -i -e '/^!/d' -e '/^\[/d' "/var/filter_lists/Native_${i}.txt"
done
sed -i '/^!/d' /var/filter_lists/Facebook.txt

# Entfernt Zeilen beginnend mit '#'
sed -i '/^#/d' /var/filter_lists/DoH_1.txt

# Entfernen der Einträge aus DoH_2.txt
grep -v -f /var/filter_lists/DoH_2.txt /var/filter_lists/DoH_1.txt > /var/filter_lists/DoH_merge.txt


# Dateien zusammenführen
cat /var/filter_lists/Ads_*.txt > /var/filter_lists/Ads_merge.txt
cat /var/filter_lists/Tracker_*.txt > /var/filter_lists/Tracker_merge.txt
cat /var/filter_lists/Native_*.txt > /var/filter_lists/Native_merge.txt

# " $client='adg-pixel\, adg-surface'" an jede Zeile anhängen
sed -i 's/$/$client='\''adg-pixel\, adg-surface'\''/' Facebook.txt

# Verschieben der bereinigten Dateien
mv /var/filter_lists/{Ads_merge.txt,Tracker_merge.txt,Native_merge*,Facebook*} /var/git/Block-Lists/
mv /var/filter_lists/DoH_merge.txt /var/www/html

# Löschen der nicht mehr benötigten Dateien
rm /var/filter_lists/{Ads_*,Tracker_*,Native_*,DoH*}.txt
 
# Aktualisieren des Git-Repositories
cd /var/git/Block-Lists
git pull
git add .
git commit -m "automatic update"
git push https://$GIT_USERNAME:$GIT_PASSWORD@github.com/SirKubiac/Block-Lists.git --all
