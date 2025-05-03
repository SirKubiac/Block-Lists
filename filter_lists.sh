#!/bin/bash

export GIT_ASKPASS=echo
export GIT_USERNAME=
export GIT_PASSWORD=

# Herunterladen der Listen
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/ultimate.txt -P /var/filter_lists/ -O /var/filter_lists/File_1.txt
wget https://raw.githubusercontent.com/hagezi/dns-blocklists/main/share/microsoft.txt -P /var/filter_lists/ -O /var/filter_lists/File_2.txt
wget https://raw.githubusercontent.com/SirKubiac/Block-Lists/refs/heads/main/Microsoft_White_List.txt -P /var/filter_lists/ -O /var/filter_lists/File_3.txt
wget https://cdn.jsdelivr.net/gh/hagezi/dns-blocklists@latest/wildcard/doh-onlydomains.txt -P /var/filter_lists/ -O /var/filter_lists/File_4.txt
wget https://raw.githubusercontent.com/SirKubiac/Block-Lists/refs/heads/main/DoH_White_List.txt -P /var/filter_lists/ -O /var/filter_lists/File_5.txt

# Entfernen von Kommentaren und Leerzeilen aus den Listen
sed -i '/^#/d' /var/filter_lists/File_1.txt
sed -i '/^\s*$/d' /var/filter_lists/File_1.txt

sed -i '/^#/d' /var/filter_lists/File_2.txt
sed -i '/^\s*$/d' /var/filter_lists/File_2.txt

sed -i '/^#/d' /var/filter_lists/File_4.txt
sed -i '/^\s*$/d' /var/filter_lists/File_4.txt

# Entfernen der Einträge aus File_2.txt und File_3.txt
grep -v -f /var/filter_lists/File_2.txt /var/filter_lists/File_1.txt | grep -v -F -f /var/filter_lists/File_3.txt > /var/filter_lists/Merged.txt

# Entfernen der Einträge aus File_5.txt
grep -v -f /var/filter_lists/File_5.txt /var/filter_lists/File_4.txt > /var/filter_lists/DoH.txt

# Verschieben der bereinigten Dateien
mv /var/filter_lists/DoH.txt /var/www/html
mv /var/filter_lists/Merged.txt /var/git/Block-Lists/Merged.txt
rm /var/filter_lists/File_1.txt /var/filter_lists/File_2.txt /var/filter_lists/File_3.txt /var/filter_lists/File_4.txt /var/filter_lists/File_5.txt
 
# Aktualisieren des Git-Repositories
cd /var/git/Block-Lists
git pull
git add .
git commit -m "automatic update"
git push https://$GIT_USERNAME:$GIT_PASSWORD@github.com/SirKubiac/Block-Lists.git --all

# Vorlagen
#sed -i '/^\s*$/d' /var/filter_lists/	#Entfernt Leerzeilen
#sed -i '/^#/d' /var/filter_lists/	#Entfernt Zeilen beginnend mit '#'
#sed -i '/\.$/d' /var/filter_lists/	#Entfernt Zeilen endend mit '.'
#sed -i '/\*/d' /var/filter_lists/	#Entfernt Zeilen, die '*' enthalten
