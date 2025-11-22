# GitHub Repository Setup Guide

This document will guide you through setting up your Retro Neon 80s theme as a GitHub repository.

## 🎯 Quick Setup

### Step 1: Update package.json

Before pushing to GitHub, update your GitHub username in `package.json`:

```json
{
  "repository": {
    "type": "git",
    "url": "https://github.com/benevolentshrine/retro-neon-80s-theme"
  }
}
```

Replace `benevolentshrine` with your actual GitHub username.

### Step 2: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `retro-neon-80s-theme`
3. Description: `A stunning retro vintage 90s/80s aesthetic VS Code theme with vibrant neon colors`
4. Choose **Public** (so others can use it)
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click **Create repository**

### Step 3: Initialize Local Repository

```bash
# Initialize git (if not already done)
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Retro Neon 80s theme v1.0.0"

# Add remote (replace benevolentshrine)
git remote add origin https://github.com/benevolentshrine/retro-neon-80s-theme.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 4: Create First Release

1. Build the .vsix file: `vsce package`
2. Go to your repository on GitHub
3. Click **Releases** → **Create a new release**
4. Tag: `v1.0.0`
5. Title: `v1.0.0 - Initial Release`
6. Description: Copy from CHANGELOG.md
7. Upload the `.vsix` file
8. Click **Publish release**

## 🎨 Repository Settings

### About Section

In your GitHub repository settings:
- **Description**: A stunning retro vintage 90s/80s aesthetic VS Code theme with vibrant neon colors
- **Website**: Your Gumroad link (optional)
- **Topics**: Add these tags:
  - `vscode-theme`
  - `vscode-extension`
  - `retro`
  - `80s`
  - `90s`
  - `neon`
  - `synthwave`
  - `vaporwave`
  - `dark-theme`

### GitHub Pages (Optional)

You can enable GitHub Pages to create a website for your theme:

1. Create a `docs` folder
2. Add an `index.html` with theme showcase
3. Enable GitHub Pages in repository settings
4. Choose `docs` folder as source

## 📸 Adding Screenshots

To make your repository more attractive:

1. Open VS Code with your theme
2. Take screenshots of code in different languages
3. Save to `screenshots/` folder:
   - `screenshots/python-example.png`
   - `screenshots/javascript-example.png`
   - `screenshots/html-example.png`
   - etc.
4. Commit and push the screenshots
5. The README.md will automatically display them

### Taking Great Screenshots

Tips for impressive screenshots:
- Use syntax highlighting with real code
- Show diverse languages
- Include the full VS Code interface (sidebar, terminal)
- Use a 16:9 aspect ratio
- 1920x1080 resolution works well
- PNG format for best quality

## 🔄 Keeping Repository Updated

When you make changes:

```bash
# Make your changes to theme files
# Test the changes

# Update version in package.json
# Update CHANGELOG.md

# Commit changes
git add .
git commit -m "feat: add new color for JSX components"

# Push to GitHub
git push origin main

# For releases, use the release.sh script
./release.sh
```

## 🌟 Making Your Repo Discoverable

1. **Add topics/tags** in repository settings
2. **Write a good README** (already done! ✓)
3. **Add screenshots** showing the theme
4. **Create releases** for each version
5. **Share on social media** (Twitter, Reddit r/vscode)
6. **Submit to awesome lists** (awesome-vscode)
7. **Blog about it** or write a dev.to article

## 📝 Additional Files (Optional)

### CODE_OF_CONDUCT.md

Add a code of conduct for contributors:
- Use GitHub's Contributor Covenant template
- Go to repository → Insights → Community → Add

### SECURITY.md

If you want to specify security policies:
```markdown
# Security Policy

## Reporting a Vulnerability

If you discover a security issue, please email: your-email@example.com
```

### .github/ISSUE_TEMPLATE/

Create issue templates for:
- Bug reports
- Feature requests

## 🎉 You're All Set!

Your theme is now ready for GitHub! Users can:
- Clone and install it
- Download .vsix from releases
- Star and watch your repository
- Contribute improvements
- Report issues

---

**Need help?** Check these resources:
- [GitHub Docs](https://docs.github.com)
- [VS Code Extension Publishing](https://code.visualstudio.com/api/working-with-extensions/publishing-extension)
- [GitHub Release Guide](https://docs.github.com/en/repositories/releasing-projects-on-github)
