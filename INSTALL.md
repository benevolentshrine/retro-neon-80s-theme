# 🎮 Installing Your Retro Neon 80s Theme

## Quick Installation Guide

### Method 1: Manual Installation (Recommended for Local Testing)

1. **Locate your VS Code extensions directory:**
   - **Windows**: `%USERPROFILE%\.vscode\extensions`
   - **macOS/Linux**: `~/.vscode/extensions`

2. **Copy the theme folder:**
   ```bash
   # From the project directory
   cp -r "vs code theme" ~/.vscode/extensions/retro-neon-80s
   
   # Or manually copy the folder to your extensions directory
   ```

3. **Reload VS Code:**
   - Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
   - Type "Reload Window" and select it
   - Or simply restart VS Code

4. **Activate the theme:**
   - Press `Ctrl+K Ctrl+T` (or `Cmd+K Cmd+T` on Mac)
   - Or go to **File > Preferences > Color Theme**
   - Select **Retro Neon 80s**

### Method 2: Developer Mode (For Testing & Development)

1. **Open the theme folder in VS Code:**
   ```bash
   code "~/Documents/projects/vs code theme"
   ```

2. **Press F5** to launch Extension Development Host
   - This opens a new VS Code window with your theme loaded
   - Make changes to the theme file and reload to see updates

3. **Activate the theme** in the Extension Development Host window

### Method 3: Package and Install as VSIX

1. **Install vsce (VS Code Extension Manager):**
   ```bash
   npm install -g @vscode/vsce
   ```

2. **Package the extension:**
   ```bash
   cd "~/Documents/projects/vs code theme"
   vsce package
   ```

3. **Install the .vsix file:**
   - Go to Extensions view (`Ctrl+Shift+X`)
   - Click the `...` menu at the top
   - Select "Install from VSIX..."
   - Choose the generated `.vsix` file

## Testing the Theme

Open the sample files in the `examples/` folder to see the theme in action:

- `sample.js` - JavaScript with vibrant syntax highlighting
- `sample.py` - Python with neon colors
- `sample.html` - HTML markup
- `sample.css` - CSS with colorful properties

## Recommended Settings

Add these to your `settings.json` for the best retro experience:

```json
{
  "workbench.colorTheme": "Retro Neon 80s",
  "editor.fontFamily": "'Fira Code', 'JetBrains Mono', 'Courier New', monospace",
  "editor.fontLigatures": true,
  "editor.fontSize": 14,
  "editor.lineHeight": 22,
  "editor.cursorBlinking": "smooth",
  "editor.cursorSmoothCaretAnimation": "on",
  "editor.renderLineHighlight": "all",
  "editor.bracketPairColorization.enabled": true
}
```

## Troubleshooting

**Theme not showing up?**
- Make sure the folder is in the correct extensions directory
- Check that `package.json` and the theme JSON file exist
- Reload VS Code window

**Colors look wrong?**
- Make sure you selected "Retro Neon 80s" and not a default theme
- Check that your VS Code version is 1.70 or higher

**Want to customize colors?**
- Edit `themes/retro-neon-80s-color-theme.json`
- Reload VS Code to see changes

## Publishing to Marketplace (Optional)

1. Create a publisher account at https://marketplace.visualstudio.com/
2. Get a Personal Access Token from Azure DevOps
3. Run: `vsce publish`

Enjoy your retro coding experience! 🎮✨
