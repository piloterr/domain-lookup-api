#!/usr/bin/env bash
# Domain DNSBL API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./dnsbl.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/domain/dnsbl" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=185.122.10.10
