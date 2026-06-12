#!/usr/bin/env bash
set -euo pipefail

private_key="${1:?Usage: sign-release.sh /path/to/update-private.pem}"
openssl pkeyutl -sign -rawin -inkey "$private_key" \
  -in stable.json -out stable.json.sig
echo "Signed stable.json -> stable.json.sig"
