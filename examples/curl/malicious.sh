#!/usr/bin/env bash
# Domain Malicious API – cURL example
# Usage: PILOTERR_API_KEY=your-key ./malicious.sh
set -euo pipefail

curl -sS --fail-with-body -G "https://api.piloterr.com/v2/domain/malicious" \
  -H "x-api-key: ${PILOTERR_API_KEY}" \
  --data-urlencode query=197.33.189.70
