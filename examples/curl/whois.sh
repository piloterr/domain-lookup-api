#!/usr/bin/env bash
# Domain Whois API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./whois.sh
set -euo pipefail

curl -sS -G "https://api.piloterr.com/v2/domain/whois" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=piloterr.com
