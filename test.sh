#!/bin/bash
for site in https://account.docusign.com/ https://outlook.office365.com/ https://accounts.google.com/ https://apps.shopify.com/ https://icanhazip.com
do
(cat ~/id.txt | tr -d "\n"; echo -n ","; echo -n "$site,"; curl -L -w @/home/cloudflare/perf-test/curl-output-format.txt -o /dev/null -s $site; echo -n ","; date +%s) >> ~/data/data.csv
done
