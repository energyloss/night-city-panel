#!/usr/bin/env sh
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
OUT="$ROOT/dist"
NAME=night-city-panel

rm -rf "$OUT"
mkdir -p "$OUT/$NAME"

# This source layout is not yet confirmed as the store ZIP layout.
cp -R "$ROOT/Dashboard.qml" "$ROOT/components" "$ROOT/services" \
  "$ROOT/theme" "$ROOT/assets" "$ROOT/packaging/manifest.json" "$OUT/$NAME/"

(cd "$OUT" && zip -qr "$NAME.zip" "$NAME")
sha256sum "$OUT/$NAME.zip" > "$OUT/$NAME.zip.sha256"
echo "Created provisional artifact: $OUT/$NAME.zip"
