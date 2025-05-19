#!/bin/bash

export GIT_ASKPASS=echo
export GIT_USERNAME=
export GIT_PASSWORD=

# URLs of ad blocklists
ads_tracker_urls=(
    "https://blocklist.sefinek.net/generated/v1/noip/ads/adaway/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/0Zinc/easylist.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/blocklistproject/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/blocklistproject/youtube.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/craiu/mobiletrackers.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/DandelionSprout.GameConsoleAdblockList.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/disconnectme/simple-ad.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/FadeMind/UncheckyAds.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/firebog/AdguardDNS.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/firebog/Admiral.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/firebog/Easylist.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/firebog/Prigent-Ads.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/MajkiIT/SmartTV-ads.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/r-a-y/AdguardMobileAds.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/sefinek.hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/ShadowWhisperer/Ads.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/ads/yoyo/ads-trackers-etc.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/0Zinc/easyprivacy.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/frogeye/firstparty-trackers-hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/MajkiIT/adguard-mobile-host.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/neodevpro/host.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/quidsup/trackers-hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/noip/tracking-and-telemetry/sefinek.hosts.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/light.txt"
)

# URL for AMP blocklist
amp_url="https://blocklist.sefinek.net/generated/v1/noip/amp/developerdan/amp-hosts-extended.fork.txt"

# URL for DoH blocklist
doh_url="https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/wildcard/doh-onlydomains.txt"

# URLs for native tracker blocklists
native_tracker_urls=(
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.amazon.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.apple.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.huawei.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.tiktok.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.tiktok.extended.txt"
)

# URL for Facebook blocklist
facebook_url="https://blocklist.sefinek.net/generated/v1/noip/social/facebook.txt"

# Paths to whitelist files
whitelist_ads_tracking="/var/filter_lists/whitelist_sophos.txt"
whitelist_doh="/var/filter_lists/whitelist_doh_sophos.txt"

# Output files
ads_tracker_output="/var/git/Block-Lists/ads_tracker_sophos.txt"
amp_output="/var/git/Block-Lists/amp_sophos.txt"
doh_output="/var/www/html/doh_sophos.txt"
native_tracker_output="/var/git/Block-Lists/native_tracker_sophos.txt"
facebook_output="/var/www/html/facebook_sophos.txt"

# Temporary files
temp_ads_tracker=$(mktemp)
temp_doh=$(mktemp)
temp_native=$(mktemp)

# Fetch ad, tracking & telemetry blocklists, remove comments, and merge them
for url in "${ads_tracker_urls[@]}"; do
    curl -s "$url" | grep -v '^#' >> "$temp_ads_tracker"
done

# Fetch AMP blocklist and remove comments
curl -s "$amp_url" | grep -v '^#' > "$amp_output"

# Fetch DoH blocklist and remove comments
curl -s "$doh_url" | grep -v '^#' >> "$temp_doh"

# Fetch native tracker blocklists, remove comments, and merge them
for url in "${native_tracker_urls[@]}"; do
    curl -s "$url" | grep -v '^#' >> "$temp_native"
done

# Fetch Facebook blocklist and remove comments
curl -s "$facebook_url" | grep -v '^#' > "$facebook_output"

# Remove whitelisted entries from ads & tracking lists
grep -vwFf "$whitelist_ads_tracking" "$temp_ads_tracker" | sort -u > "$ads_tracker_output"

# Remove whitelisted entries from the DoH blocklist
grep -vwFf "$whitelist_doh" "$temp_doh" | sort -u > "$doh_output"

# Save the cleaned native tracker blocklist
mv "$temp_native" "$native_tracker_output"

# Clean up temporary files
rm "$temp_ads_tracker" "$temp_doh"

# Update the Git repository
cd /var/git/Block-Lists
git pull
git add .
git commit -m "automatic update"
git push https://$GIT_USERNAME:$GIT_PASSWORD@github.com/SirKubiac/Block-Lists.git --all