#!/bin/bash

export GIT_ASKPASS=echo
export GIT_USERNAME=
export GIT_PASSWORD=

# Ads block lists for Adguard
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/0Zinc/easylist.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_1.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/adaway/hosts.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_2.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/blocklistproject/hosts.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_3.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/blocklistproject/youtube.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_4.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/craiu/mobiletrackers.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_5.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/DandelionSprout.GameConsoleAdblockList.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_6.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/disconnectme/simple-ad.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_7.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/FadeMind/UncheckyAds.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_8.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/AdguardDNS.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_9.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/Admiral.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_10.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/Easylist.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_11.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/Prigent-Ads.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_12.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/MajkiIT/SmartTV-ads.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_13.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/r-a-y/AdguardMobileAds.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_14.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/sefinek.hosts.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_15.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/ShadowWhisperer/Ads.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_16.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/ads/yoyo/ads-trackers-etc.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Ads_17.txt
# Ads block lists for Sophos
wget https://blocklist.sefinek.net/generated/v1/noip/ads/0Zinc/easylist.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_1.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/adaway/hosts.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_2.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/blocklistproject/hosts.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_3.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/blocklistproject/youtube.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_4.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/craiu/mobiletrackers.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_5.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/DandelionSprout.GameConsoleAdblockList.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_6.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/disconnectme/simple-ad.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_7.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/FadeMind/UncheckyAds.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_8.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/firebog/AdguardDNS.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_9.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/firebog/Admiral.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_10.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/firebog/Easylist.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_11.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/firebog/Prigent-Ads.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_12.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/MajkiIT/SmartTV-ads.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_13.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/r-a-y/AdguardMobileAds.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_14.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/sefinek.hosts.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_15.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/ShadowWhisperer/Ads.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_16.txt
wget https://blocklist.sefinek.net/generated/v1/noip/ads/yoyo/ads-trackers-etc.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Ads_17.txt
# Telemetry block list for Adguard
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/0Zinc/easyprivacy.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_1.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/frogeye/firstparty-trackers-hosts.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_2.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/MajkiIT/adguard-mobile-host.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_3.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/neodevpro/host.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_4.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/quidsup/trackers-hosts.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_5.txt
wget https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/sefinek.hosts.txt -P /var/filter_lists/ -O /var/filter_lists/Tracker_6.txt
# Telemetry block list for Sophos
wget https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/0Zinc/easyprivacy.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Tracker_1.txt
wget https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/frogeye/firstparty-trackers-hosts.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Tracker_2.txt
wget https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/MajkiIT/adguard-mobile-host.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Tracker_3.txt
wget https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/neodevpro/host.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Tracker_4.txt
wget https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/quidsup/trackers-hosts.fork.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Tracker_5.txt
wget https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/sefinek.hosts.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Tracker_6.txt
# Native block list for Adguard
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.amazon.txt -P /var/filter_lists/ -O /var/filter_lists/Native_1.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.apple.txt -P /var/filter_lists/ -O /var/filter_lists/Native_2.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.huawei.txt -P /var/filter_lists/ -O /var/filter_lists/Native_3.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.samsung.txt -P /var/filter_lists/ -O /var/filter_lists/Native_4.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.tiktok.txt -P /var/filter_lists/ -O /var/filter_lists/Native_5.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.tiktok.extended.txt -P /var/filter_lists/ -O /var/filter_lists/Native_6.txt
# Native block list for Sophos
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.amazon.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Native_1.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.apple.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Native_2.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.huawei.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Native_3.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.samsung.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Native_4.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.tiktok.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Native_5.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.tiktok.extended.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Native_6.txt
# Facebook block list for Adguard
wget https://blocklist.sefinek.net/generated/v1/adguard/social/facebook.txt -P /var/filter_lists/ -O /var/filter_lists/Facebook.txt
# Facebook block list for Sophos
wget https://blocklist.sefinek.net/generated/v1/noip/social/facebook.txt -P /var/filter_lists/ -O /var/filter_lists/Sophos_Facebook.txt
# DoH block list for Sophos
wget https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/wildcard/doh-onlydomains.txt -P /var/filter_lists/ -O /var/filter_lists/DoH_1.txt
wget https://raw.githubusercontent.com/SirKubiac/Block-Lists/refs/heads/main/DoH_White_List.txt -P /var/filter_lists/ -O /var/filter_lists/DoH_2.txt
# Microsoft white list for Sophos
wget https://raw.githubusercontent.com/SirKubiac/Block-Lists/refs/heads/main/Sophos_White_List_Microsoft.txt -P /var/filter_lists/ -O /var/filter_lists/SWLM.txt
# Microsoft white list for Adguard
wget https://raw.githubusercontent.com/SirKubiac/Block-Lists/refs/heads/main/White_List_Microsoft.txt -P /var/filter_lists/ -O /var/filter_lists/WLM.txt

# Removes lines starting with '!' in Ads block list Adguard
for i in {1..17}; do
    sed -i '/^!/d' "/var/filter_lists/Ads_${i}.txt"
done
# Removes lines starting with '#' in Ads block list Sophos
for i in {1..17}; do
    sed -i '/^#/d' "/var/filter_lists/Sophos_Ads_${i}.txt"         
done
# Removes lines starting with '!' in Telemetry block list Adguard
for i in {1..6}; do
    sed -i '/^!/d' "/var/filter_lists/Tracker_${i}.txt"
done
# Removes lines starting with '#' in Telemetry block list Sophos
for i in {1..6}; do
    sed -i '/^#/d' "/var/filter_lists/Sophos_Tracker_${i}.txt"
done
# Removes lines starting with '!' and '[' in Native block list Adguard
for i in {1..6}; do
    sed -i '/^!/d' "/var/filter_lists/Native_${i}.txt"
    sed -i '/^\[/d' "/var/filter_lists/Native_${i}.txt"
done
# Removes lines starting with '#' in Native block list Sophos
for i in {1..6}; do
    sed -i '/^#/d' "/var/filter_lists/Sophos_Native_${i}.txt"
done
# Removes lines starting with '!' in Facebook block list Adguard
sed -i '/^!/d' /var/filter_lists/Facebook.txt
# Removes lines starting with '#' in Facebook block list Sophos
sed -i '/^#/d' /var/filter_lists/Sophos_Facebook.txt

# Removes lines starting with '#' in DoH list Sophos
sed -i '/^#/d' /var/filter_lists/DoH_1.txt

# Opens DoH_1.txt and removes entries from DoH_2.txt
grep -v -f /var/filter_lists/DoH_2.txt /var/filter_lists/DoH_1.txt > /var/filter_lists/DoH_merge.txt

# Merge files
cat /var/filter_lists/Ads_*.txt > /var/filter_lists/Ads_merge_tmp.txt
cat /var/filter_lists/Sophos_Ads_*.txt > /var/filter_lists/Sophos_Ads_merge_tmp.txt
cat /var/filter_lists/Tracker_*.txt > /var/filter_lists/Tracker_merge.txt
cat /var/filter_lists/Sophos_Tracker_*.txt > /var/filter_lists/Sophos_Tracker_merge.txt
cat /var/filter_lists/Native_*.txt > /var/filter_lists/Native_merge.txt
cat /var/filter_lists/Sophos_Native_*.txt > /var/filter_lists/Sophos_Native_merge.txt

# Remove Microsoft domains from Ads_merge.txt
grep -v -f /var/filter_lists/WLM.txt /var/filter_lists/Ads_merge_tmp.txt > /var/filter_lists/Ads_merge.txt
# Remove Microsoft domains from Sophos_Ads_merge.txt
grep -v -f /var/filter_lists/SWLM.txt /var/filter_lists/Sophos_Ads_merge_tmp.txt > /var/filter_lists/Sophos_Ads_merge.txt

# " $client='adg-pixel\, adg-surface'" an jede Zeile anhängen
sed -i 's/$/$client='\''adg-pixel\, adg-surface'\''/' /var/filter_lists/Facebook.txt

# Move the cleaned files
mv /var/filter_lists/{Ads_merge.txt,Sophos_Ads_merge.txt,Tracker_merge.txt,Sophos_Tracker_merge.txt,Native_merge.txt,Sophos_Native_merge.txt,Facebook.txt} /var/git/Block-Lists/
mv /var/filter_lists/{DoH_merge.txt,Sophos_Facebook.txt} /var/www/html

# Delete unnecessary files
rm /var/filter_lists/{Ads_*,Sophos_Ads_*,Tracker_*,Sophos_Tracker_*,Native_*,Sophos_Native_*,DoH*,Sophos_Ads_merge_tmp.txt,Ads_merge_tmp.txt}.txt
 
# Update the Git repository
cd /var/git/Block-Lists
git pull
git add .
git commit -m "automatic update"
git push https://$GIT_USERNAME:$GIT_PASSWORD@github.com/SirKubiac/Block-Lists.git --all