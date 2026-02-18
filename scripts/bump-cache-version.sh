#!/bin/sh
# Bump style.css cache version in all HTML files (v=1.0 -> v=1.1 -> v=1.2 ...).
# Run from repo root. Used by pre-commit hook so each commit gets a new version.

set -e
ROOT=$(git rev-parse --show-toplevel)
cd "$ROOT"

# Find current version from any HTML file (e.g. style.css?v=1.0)
current=$(grep -oh 'style\.css?v=[^"]*' index.html 2>/dev/null | head -1 | sed 's/.*v=//' || true)
[ -z "$current" ] && current="1.0"

# Increment patch: 1.0 -> 1.1, 1.1 -> 1.2
major=${current%%.*}
patch=${current#*.}
# If no dot (e.g. "1"), treat as 1.0 -> next is 1.1
if [ "$patch" = "$current" ]; then
  patch=0
fi
patch=$((patch + 1))
next="$major.$patch"

# Update all HTML files
for f in index.html about.html contact.html projects.html 404.html project-*.html; do
  [ -f "$f" ] || continue
  if grep -q 'href="style\.css?v=' "$f" 2>/dev/null; then
    sed -i.bak "s/href=\"style\.css?v=[^\"]*\"/href=\"style.css?v=$next\"/" "$f"
    rm -f "${f}.bak"
  fi
done

# Stage updated files so this commit includes the version bump
git add index.html about.html contact.html projects.html 404.html \
  project-patient-monitoring.html project-robotic-gripper.html \
  project-kit-car.html project-3r-pendulum.html 2>/dev/null || true

echo "Bumped cache version to v=$next"
