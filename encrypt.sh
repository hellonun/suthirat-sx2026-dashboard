#!/usr/bin/env bash
# Re-encrypt the dashboard after editing src/dashboard.html.
# Usage: ./encrypt.sh <password>
set -e
npx staticrypt@3 src/dashboard.html -p "$1" --short -d public --remember 30 \
  --template-title "Suthirat Foundation · SX2026 Booth Report" \
  --template-instructions "Enter the password to view the booth dashboard" \
  --template-button "View dashboard" --template-placeholder "Password" \
  --template-remember "Remember me" --template-error "Incorrect passwordไม่ถูกต้อง" \
  --template-color-primary "#0030B1" --template-color-secondary "#F5F7FC"
mv public/dashboard.html public/index.html
