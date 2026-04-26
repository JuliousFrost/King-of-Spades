#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_DIR="$HOME/.hermes/dashboard-themes"
PLUGIN_DIR="$HOME/.hermes/plugins/king-of-spades"

mkdir -p "$THEME_DIR" "$PLUGIN_DIR"
cp "$ROOT/theme/king-of-spades.yaml" "$THEME_DIR/king-of-spades.yaml"
rm -rf "$PLUGIN_DIR/dashboard"
cp -R "$ROOT/plugin/king-of-spades/dashboard" "$PLUGIN_DIR/dashboard"

echo "Installed King of Spades theme: $THEME_DIR/king-of-spades.yaml"
echo "Installed King of Spades asset plugin: $PLUGIN_DIR/dashboard"
echo "Restart Hermes gateway/dashboard, then select 'King of Spades' in the theme picker."
