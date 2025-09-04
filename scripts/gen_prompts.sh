#!/usr/bin/env bash
set -e
mkdir -p assets
outfile="assets/prompts.js"
echo 'window.promptFolders = [' > "$outfile"
first=1
for d in assets/*/ ; do
  [ -d "$d" ] || continue
  name=$(basename "$d")
  if [ $first -eq 1 ]; then
    printf '"%s"' "$name" >> "$outfile"
    first=0
  else
    printf ', "%s"' "$name" >> "$outfile"
  fi
done
echo '];' >> "$outfile"
echo "Wrote $outfile"
