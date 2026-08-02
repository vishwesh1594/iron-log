#!/bin/zsh
# One-shot publisher for IRON·LOG.
# Prereq: `gh auth login` completed once on this Mac.
set -e
cd "$(dirname "$0")"

REPO_NAME="iron-log"
OWNER=$(gh api user -q .login)

echo "→ Creating github.com/$OWNER/$REPO_NAME (public, required for free GitHub Pages)…"
gh repo create "$REPO_NAME" --public --source . --push \
  --description "🏋️ IRON·LOG — installable offline workout tracker for a 5-phase training plan"

echo "→ Enabling GitHub Pages from main branch…"
gh api "repos/$OWNER/$REPO_NAME/pages" -X POST \
  -f "source[branch]=main" -f "source[path]=/" >/dev/null 2>&1 || \
gh api "repos/$OWNER/$REPO_NAME/pages" -X PUT \
  -f "source[branch]=main" -f "source[path]=/" >/dev/null

echo ""
echo "✅ Done! Your app will be live in ~1 minute at:"
echo "   https://$OWNER.github.io/$REPO_NAME/"
echo ""
echo "Open that URL on your phone → Chrome ⋮ menu → 'Add to Home screen'."
