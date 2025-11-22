#!/bin/bash

# Retro Neon 80s Theme - GitHub Release Script
# This script automates the release process

set -e

echo "🌆 Retro Neon 80s Theme - Release Script"
echo "========================================"
echo ""

# Get current version from package.json
VERSION=$(node -p "require('./package.json').version")
echo "📋 Current version: v$VERSION"
echo ""

# Confirm release
read -p "🤔 Do you want to release v$VERSION? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "❌ Release cancelled"
    exit 1
fi

# Check if vsce is installed
if ! command -v vsce &> /dev/null
then
    echo "⚠️  vsce not found. Installing..."
    npm install -g @vscode/vsce
fi

# Package the extension
echo "📦 Packaging extension..."
vsce package
echo "✅ Package created: retro-neon-80s-$VERSION.vsix"
echo ""

# Git operations
echo "💾 Committing changes..."
git add .
git commit -m "Release v$VERSION" || echo "Nothing to commit"
echo ""

echo "🏷️  Creating git tag..."
git tag -a "v$VERSION" -m "Release version $VERSION" || echo "Tag already exists"
echo ""

# Push to GitHub
echo "📤 Pushing to GitHub..."
read -p "🤔 Push to GitHub now? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    git push origin main || git push origin master
    git push origin "v$VERSION"
    echo "✅ Pushed to GitHub"
else
    echo "⏭️  Skipped GitHub push"
fi

echo ""
echo "=========================================="
echo "✅ Release v$VERSION complete!"
echo ""
echo "📝 Next steps:"
echo "1. Go to https://github.com/yourusername/retro-neon-80s-theme/releases"
echo "2. Click 'Create a new release'"
echo "3. Select tag v$VERSION"
echo "4. Upload retro-neon-80s-$VERSION.vsix"
echo "5. Publish the release"
echo ""
echo "🎉 Happy releasing!"
