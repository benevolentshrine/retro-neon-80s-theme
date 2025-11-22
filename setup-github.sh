#!/bin/bash

# Retro Neon 80s Theme - GitHub Setup Script
# This script helps you set up your GitHub repository

set -e

echo "🌆 Retro Neon 80s Theme - GitHub Setup"
echo "========================================"
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "📚 Initializing git repository..."
    git init
    echo "✅ Git initialized"
else
    echo "✅ Git already initialized"
fi
echo ""

# Get GitHub username
echo "Please enter your GitHub username:"
read GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo "❌ GitHub username cannot be empty"
    exit 1
fi

echo ""
echo "📝 Updating package.json with your GitHub username..."

# Update package.json with the correct repository URL
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s|yourusername|$GITHUB_USERNAME|g" package.json
    sed -i '' "s|yourusername|$GITHUB_USERNAME|g" README.md
else
    # Linux
    sed -i "s|yourusername|$GITHUB_USERNAME|g" package.json
    sed -i "s|yourusername|$GITHUB_USERNAME|g" README.md
fi

echo "✅ Updated repository URL to: https://github.com/$GITHUB_USERNAME/retro-neon-80s-theme"
echo ""

# Create initial commit
echo "💾 Creating initial commit..."
git add .
git commit -m "Initial commit: Retro Neon 80s theme v1.0.0" || echo "Nothing new to commit"
echo ""

# Set branch to main
echo "🌿 Setting main branch..."
git branch -M main
echo ""

# Instructions for adding remote
echo "=========================================="
echo "✅ Local repository ready!"
echo ""
echo "📝 Next steps:"
echo ""
echo "1. Create a new repository on GitHub:"
echo "   - Go to: https://github.com/new"
echo "   - Name: retro-neon-80s-theme"
echo "   - Description: A stunning retro vintage 90s/80s aesthetic VS Code theme"
echo "   - Make it Public"
echo "   - DON'T initialize with README, .gitignore, or license"
echo ""
echo "2. Connect your local repository to GitHub:"
echo "   Run this command:"
echo "   git remote add origin https://github.com/$GITHUB_USERNAME/retro-neon-80s-theme.git"
echo ""
echo "3. Push to GitHub:"
echo "   git push -u origin main"
echo ""
echo "4. Create your first release:"
echo "   - Run: vsce package"
echo "   - Go to: https://github.com/$GITHUB_USERNAME/retro-neon-80s-theme/releases"
echo "   - Create new release with tag v1.0.0"
echo "   - Upload the .vsix file"
echo ""
echo "📖 For detailed instructions, see GITHUB_SETUP.md"
echo ""
echo "🎉 You're almost there!"
