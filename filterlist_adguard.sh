#!/bin/bash

export GIT_ASKPASS=
export GIT_USERNAME=
export GIT_PASSWORD=

# Zielverzeichnis und Dateien
DOH_TARGET="/var/git/Block-Lists/doh_adguard.txt"
ADS_TARGET="/var/git/Block-Lists/ads_adguard.txt"
TRACKER_TARGET="/var/git/Block-Lists/tracker_adguard.txt"
AMP_TARGET="/var/git/Block-Lists/amp_adguard.txt"
NATIVE_TARGET="/var/git/Block-Lists/native_tracker_adguard.txt"
WHITELIST_FILE="/var/filter_lists/whitelist_doh_adguard.txt"
MICROSOFT_WHITELIST="/var/filter_lists/whitelist_microsoft_adguard.txt"

# URLs der Listen
DOH_URL="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/doh.txt"
ADS_URLS=(
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
)
TRACKER_URLS=(
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/0Zinc/easyprivacy.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/frogeye/firstparty-trackers-hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/MajkiIT/adguard-mobile-host.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/neodevpro/host.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/quidsup/trackers-hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/adguard/tracking-and-telemetry/sefinek.hosts.txt"
)
AMP_URL="https://blocklist.sefinek.net/generated/v1/adguard/amp/developerdan/amp-hosts-extended.fork.txt"
NATIVE_URLS=(
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.tiktok.extended.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.tiktok.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.samsung.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.huawei.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.apple.txt"
    "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.amazon.txt"
)

# DOH-Blockliste herunterladen und speichern, dabei unerwünschte Zeilen entfernen
curl -s "$DOH_URL" | grep -vE '^\!|^\[' > "$DOH_TARGET"

# Whitelist aus der DOH-Liste entfernen
grep -Fvxf "$WHITELIST_FILE" "$DOH_TARGET" > "$DOH_TARGET.tmp" && mv "$DOH_TARGET.tmp" "$DOH_TARGET"

# Temporäre Dateien für die Listen
TEMP_FILE_ADS="$(mktemp)"
TEMP_FILE_TRACKERS="$(mktemp)"
TEMP_FILE_AMP="$(mktemp)"
TEMP_FILE_NATIVE="$(mktemp)"

# Werbeblocker-Listen herunterladen und zusammenfügen
for URL in "${ADS_URLS[@]}"; do
    curl -s "$URL" >> "$TEMP_FILE_ADS"
done

# Tracker-Listen herunterladen und zusammenfügen
for URL in "${TRACKER_URLS[@]}"; do
    curl -s "$URL" >> "$TEMP_FILE_TRACKERS"
done

# AMP-Liste herunterladen
curl -s "$AMP_URL" >> "$TEMP_FILE_AMP"

# Nativen Tracker-Listen herunterladen und zusammenfügen
for URL in "${NATIVE_URLS[@]}"; do
    curl -s "$URL" >> "$TEMP_FILE_NATIVE"
done

# Unerwünschte Zeilen aus den Werbeblocker-Listen entfernen, doppelte Einträge bereinigen und Microsoft-Whitelist berücksichtigen
grep -vE '^!|^\@\@\|\|' "$TEMP_FILE_ADS" | sort -u | grep -v -f "$MICROSOFT_WHITELIST" > "$ADS_TARGET"

# Unerwünschte Zeilen aus den Tracker-Listen entfernen, doppelte Einträge bereinigen und Microsoft-Whitelist berücksichtigen
grep -vE '^!|^\@\@\|\|' "$TEMP_FILE_TRACKERS" | sort -u | grep -v -f "$MICROSOFT_WHITELIST" > "$TRACKER_TARGET"

# Unerwünschte Zeilen aus der AMP-Liste entfernen und doppelte Einträge bereinigen
grep -vE '^!' "$TEMP_FILE_AMP" | sort -u > "$AMP_TARGET"

# Unerwünschte Zeilen aus den nativen Tracker-Listen entfernen, doppelte Einträge bereinigen und sortieren
grep -vE '^!|^\[' "$TEMP_FILE_NATIVE" | sort -u > "$NATIVE_TARGET"

# Temporäre Dateien entfernen
rm -f "$TEMP_FILE_ADS" "$TEMP_FILE_TRACKERS" "$TEMP_FILE_AMP" "$TEMP_FILE_NATIVE"

# Update the Git repository
cd /var/git/Block-Lists
git pull
git add .
git commit -m "automatic update"
git push https://$GIT_USERNAME:$GIT_PASSWORD@github.com/SirKubiac/Block-Lists.git --all