#!/bin/bash
# Installs all brew dependencies declared in the Brewfile.
# Runs once on first chezmoi apply; reruns only if this script changes.
set -euo pipefail

if ! command -v brew &>/dev/null; then
    echo "brew not found — skipping package install" >&2
    exit 0
fi

brew bundle install --file="$HOME/Brewfile"
