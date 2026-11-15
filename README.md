# Suthirat Foundation · Sustainability Expo 2026 booth dashboard

Password-protected interactive dashboard for the client.

- `public/index.html` — the published page, AES-encrypted with [StatiCrypt](https://github.com/robinmoisson/staticrypt). Netlify serves only this folder.
- `src/dashboard.html` — the unencrypted dashboard (data, charts and fonts inlined).
- `src/data/` — cleaned data behind it (6–15 Nov, 10:00–20:00).
- `encrypt.sh` — re-encrypts `src/dashboard.html` into `public/index.html`. Keeps the same salt via `.staticrypt.json`.

To change the password or update the page: edit `src/dashboard.html`, run `./encrypt.sh <password>`, commit and push.
