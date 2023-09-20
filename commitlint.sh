#!/usr/bin/env bash
set -euxo pipefail

# cd to directory of this script
cd "$(dirname "$0")"
bun install
bun install conventional-changelog-conventionalcommits
bun install commitlint@latest
bun commitlint --version
bun commitlint $@
cd ..
