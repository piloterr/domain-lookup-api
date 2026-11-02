// Domain DNSBL API – Node.js example (Node 18+, native fetch, ES module)
// Usage: PILOTERR_API_KEY=your-key node dnsbl.mjs

const params = new URLSearchParams({
  "query": "185.122.10.10",
});

const response = await fetch(`https://api.piloterr.com/v2/domain/dnsbl?${params}`, {
  headers: { "x-api-key": process.env.PILOTERR_API_KEY },
  signal: AbortSignal.timeout(120_000),
});

if (!response.ok) {
  console.error(`Piloterr error ${response.status}: ${await response.text()}`);
  process.exit(1);
}

console.log(JSON.stringify(await response.json(), null, 2));
