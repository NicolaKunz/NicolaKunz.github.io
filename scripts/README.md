# Scripts

## bump-cache-version.sh

Increments the `style.css` cache-busting version in all HTML files (e.g. `?v=1.0` → `?v=1.1`).

**Automatic use:** A Git **pre-commit** hook (`.git/hooks/pre-commit`) runs this script before each commit so every commit gets a new version and browsers load fresh CSS.

**Manual run:** From the repo root:
```bash
./scripts/bump-cache-version.sh
```

**First-time setup:** If the hook doesn’t run (e.g. after cloning), make it executable:
```bash
chmod +x scripts/bump-cache-version.sh
chmod +x .git/hooks/pre-commit
```

On Windows with Git for Windows, the hook runs in Git Bash when you `git commit`.
