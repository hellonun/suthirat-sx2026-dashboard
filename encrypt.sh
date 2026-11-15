#!/usr/bin/env bash
# Re-encrypt the dashboard after editing src/dashboard.html.
# Usage: ./encrypt.sh <password>
set -e
npx staticrypt@3 src/dashboard.html -p "$1" --short -d public --remember 30 \
  --template-title "Suthirat Foundation · SX2026 Booth Report" \
  --template-instructions "Enter the password to view the booth dashboard · กรุณาใส่รหัสผ่านเพื่อดูแดชบอร์ด" \
  --template-button "View dashboard · ดูแดชบอร์ด" --template-placeholder "Password · รหัสผ่าน" \
  --template-remember "Remember me · จดจำฉัน" --template-error "Incorrect password · รหัสผ่านไม่ถูกต้อง" \
  --template-color-primary "#0030B1" --template-color-secondary "#F5F7FC"
mv public/dashboard.html public/index.html
