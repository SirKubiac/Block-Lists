#!/bin/bash

export 
export 
export 

# URLs of ad blocklists
ads_tracker_url_sophos=(
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

ads_tracker_url_adguard=(
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/0Zinc/easylist.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/adaway/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/blocklistproject/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/blocklistproject/youtube.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/craiu/mobiletrackers.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/DandelionSprout.GameConsoleAdblockList.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/disconnectme/simple-ad.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/FadeMind/UncheckyAds.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/AdguardDNS.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/Admiral.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/Easylist.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/firebog/Prigent-Ads.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/MajkiIT/SmartTV-ads.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/r-a-y/AdguardMobileAds.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/sefinek.hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/ShadowWhisperer/Ads.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/ads/yoyo/ads-trackers-etc.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/0Zinc/easyprivacy.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/frogeye/firstparty-trackers-hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/MajkiIT/adguard-mobile-host.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/neodevpro/host.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/quidsup/trackers-hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/sefinek.hosts.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/light.txt"
)

# URL for AMP blocklist
amp_url_sophos="https://blocklist.sefinek.net/generated/v1/noip/amp/developerdan/amp-hosts-extended.fork.txt"
amp_url_adguard="https://blocklist.sefinek.net/generated/v1/adguard/amp/developerdan/amp-hosts-extended.fork.txt"

# URL for DoH blocklist
doh_url_sophos="https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/wildcard/doh-onlydomains.txt"
doh_url_adguard="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/doh.txt"

# URLs for native tracker blocklists
native_tracker_url_sophos=(
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.amazon.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.apple.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.huawei.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.tiktok.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/native.tiktok.extended.txt"
    
)

native_tracker_url_adguard=(
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.huawei.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.amazon.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.apple.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.huawei.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.tiktok.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.tiktok.extended.txt"
)

# URL for Facebook blocklist
facebook_url_sophos="https://blocklist.sefinek.net/generated/v1/noip/social/facebook.txt"

# Paths to whitelist files
whitelist_ads_tracking_sophos="/var/git/Block-Lists/whitelist_sophos.txt"
whitelist_ads_tracking_adguard="/var/git/Block-Lists/whitelist_adguard.txt"
whitelist_doh_sophos="/var/git/Block-Lists/whitelist_doh_sophos.txt"
whitelist_doh_adguard="/var/git/Block-Lists/whitelist_doh_adguard.txt"

# Paths to blacklist files
blacklist_ads_tracking_sophos="/var/git/Block-Lists/blacklist_sophos.txt"
blacklist_ads_tracking_adguard="/var/git/Block-Lists/blacklist_adguard.txt"

# Output files
ads_tracker_output_sophos="/var/git/Block-Lists/ads_tracker_sophos.txt"
ads_tracker_output_adguard="/var/git/Block-Lists/ads_tracker_adguard.txt"
amp_output_sophos="/var/git/Block-Lists/amp_sophos.txt"
amp_output_adguard="/var/git/Block-Lists/amp_adguard.txt"
doh_output_sophos="/var/git/Block-Lists/doh_sophos.txt"
doh_output_adguard="/var/git/Block-Lists/doh_adguard.txt"
native_tracker_output_sophos="/var/git/Block-Lists/native_tracker_sophos.txt"
native_tracker_output_adguard="/var/git/Block-Lists/native_tracker_adguard.txt"
facebook_output_sophos="/var/git/Block-Lists/facebook_sophos.txt"

# Temporary files
temp_ads_tracker_sophos=$(mktemp)
temp_ads_tracker_adguard=$(mktemp)
temp_native_sophos=$(mktemp)
temp_native_adguard=$(mktemp)
temp_doh_sophos=$(mktemp)
temp_doh_adguard=$(mktemp)

# Fetch ad, tracking & telemetry blocklists, remove comments, and merge them
for url in "${ads_tracker_url_sophos[@]}"; do
    curl -s "$url" | sed 's/#.*//' | grep -v '^\s*$' >> "$temp_ads_tracker_sophos"
done

for url in "${ads_tracker_url_adguard[@]}"; do
    curl -s "$url" | grep -vE '^!|^@@\|\||^#|^\[' >> "$temp_ads_tracker_adguard"
done

# Fetch AMP blocklist and remove comments
curl -s "$amp_url_sophos" | grep -v '^#' > "$amp_output_sophos"
curl -s "$amp_url_adguard" | grep -vE '^!' > "$amp_output_adguard"

# Fetch DoH blocklist and remove comments
curl -s "$doh_url_sophos" | grep -v '^#' >> "$temp_doh_sophos"
curl -s "$doh_url_adguard" | grep -vE '^\!|^\[' > "$temp_doh_adguard"

# Fetch native tracker blocklists, remove comments, and merge them
for url in "${native_tracker_url_sophos[@]}"; do
    curl -s "$url" | grep -v '^#' >> "$temp_native_sophos"
done

for url in "${native_tracker_url_adguard[@]}"; do
    curl -s "$url" | grep -vE '^!|^\[' >> "$temp_native_adguard"
done

# Fetch Facebook blocklist and remove comments
curl -s "$facebook_url_sophos" | grep -v '^#' > "$facebook_output_sophos"

# Remove whitelisted entries from ads & tracking lists
grep -vFx -f "$whitelist_ads_tracking_sophos" "$temp_ads_tracker_sophos" | sort -u > "$ads_tracker_output_sophos"
grep -vwFf "$whitelist_ads_tracking_adguard" "$temp_ads_tracker_adguard" | sort -u > "$ads_tracker_output_adguard"

# Remove whitelisted entries from the DoH blocklist
grep -vFx -f "$whitelist_doh_sophos" "$temp_doh_sophos" | sort -u > "$doh_output_sophos"
grep -Fvxf "$whitelist_doh_adguard" "$temp_doh_adguard" | sort -u > "$doh_output_adguard"

# Removes entries of whitelist_ads_tracking from native_tracker_output
grep -vFx -f "$whitelist_ads_tracking_sophos" "$temp_native_sophos" | sort -u > "$native_tracker_output_sophos"
grep -Fvxf "$whitelist_ads_tracking_adguard" "$temp_native_adguard" | sort -u > "$native_tracker_output_adguard"

# Clean up temporary files
rm "$temp_ads_tracker_sophos" "$temp_doh_sophos" "$temp_native_sophos" "$temp_ads_tracker_adguard" "$temp_native_adguard"

# Append blacklist entries to the final ad & tracker lists
grep -v '^\s*$' "$blacklist_ads_tracking_sophos" >> "$ads_tracker_output_sophos"
grep -v '^\s*$' "$blacklist_ads_tracking_adguard" >> "$ads_tracker_output_adguard"

# Optional: remove duplicates again after appending
sort -u "$ads_tracker_output_sophos" -o "$ads_tracker_output_sophos"
sort -u "$ads_tracker_output_adguard" -o "$ads_tracker_output_adguard"

# Update the Git repository
cd /var/git/Block-Lists
git pull
git add .
git commit -m "automatic update"
git push https://$GIT_USERNAME:$GIT_PASSWORD@github.com/SirKubiac/Block-Lists.git --all