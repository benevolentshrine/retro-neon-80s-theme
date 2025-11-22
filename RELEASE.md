# Release Guide 🚀

This guide will help you release new versions of the Retro Neon 80s theme on GitHub.

## Prerequisites

- Git installed
- VS Code Extension Manager (`vsce`) installed globally
- GitHub account with a repository created

## Installing vsce

If you haven't installed `vsce` yet:

```bash
npm install -g @vscode/vsce
```

## Release Process

### 1. Update Version

Update the version in `package.json`:

```json
{
  "version": "1.0.1"  // Increment appropriately
}
```

### 2. Update Changelog

Add your changes to `CHANGELOG.md`:

```markdown
## [1.0.1] - 2025-11-22
### Added
- New feature description

### Fixed
- Bug fix description

### Changed
- Change description
```

### 3. Build the Extension

```bash
# Package the extension
vsce package

# This will create retro-neon-80s-{version}.vsix
```

### 4. Commit and Tag

```bash
# Commit all changes
git add .
git commit -m "Release v1.0.1"

# Create a git tag
git tag -a v1.0.1 -m "Release version 1.0.1"

# Push commits and tags
git push origin main
git push origin v1.0.1
```

### 5. Create GitHub Release

1. Go to your GitHub repository
2. Click on **Releases** → **Create a new release**
3. Choose the tag you just created (e.g., `v1.0.1`)
4. Set release title: `v1.0.1 - Description`
5. Add release notes (copy from CHANGELOG.md)
6. **Upload the `.vsix` file** as an asset
7. Click **Publish release**

## Quick Release Script

You can use this script to automate the process:

```bash
#!/bin/bash

# Get version from package.json
VERSION=$(node -p "require('./package.json').version")

# Package the extension
echo "📦 Packaging extension..."
vsce package

# Commit and tag
echo "💾 Committing and tagging..."
git add .
git commit -m "Release v$VERSION"
git tag -a "v$VERSION" -m "Release version $VERSION"

# Push to GitHub
echo "📤 Pushing to GitHub..."
git push origin main
git push origin "v$VERSION"

echo "✅ Release v$VERSION complete!"
echo "📝 Don't forget to create a GitHub release and upload the .vsix file!"
```

Save this as `release.sh`, make it executable with `chmod +x release.sh`, and run it with `./release.sh`.

## Version Numbering

Follow semantic versioning (MAJOR.MINOR.PATCH):

- **MAJOR** (1.0.0 → 2.0.0): Breaking changes
- **MINOR** (1.0.0 → 1.1.0): New features, backwards compatible
- **PATCH** (1.0.0 → 1.0.1): Bug fixes, backwards compatible

## Checklist Before Release

- [ ] Version updated in `package.json`
- [ ] `CHANGELOG.md` updated
- [ ] All changes committed
- [ ] Extension tested locally
- [ ] `.vsix` file generated
- [ ] Git tag created
- [ ] Changes pushed to GitHub
- [ ] GitHub release created
- [ ] `.vsix` file uploaded to release

## Publishing to VS Code Marketplace (Optional)

If you want to publish to the official marketplace:

```bash
# Login to VS Code Marketplace
vsce login your-publisher-name

# Publish the extension
vsce publish

# Or publish with a specific version increment
vsce publish minor  # or major, patch
```

---

**Happy releasing! 🎉**
