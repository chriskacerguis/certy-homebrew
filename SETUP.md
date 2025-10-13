# Setup Guide for Homebrew Tap

Follow these steps to publish your Homebrew tap on GitHub.

## 1. Create GitHub Repository

1. Go to [GitHub](https://github.com/new)
2. Create a new repository named **`homebrew-certy`** (must start with `homebrew-`)
3. Make it **public** (required for Homebrew taps)
4. Don't initialize with README (we already have files)

## 2. Push to GitHub

```bash
cd /Users/chriskacerguis/Developer/certy-homebrew

# Add the GitHub remote (replace with your actual repository URL)
git remote add origin https://github.com/chriskacerguis/homebrew-certy.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## 3. Test the Installation

After pushing, users can install certy using:

```bash
# Add your tap
brew tap chriskacerguis/certy

# Install certy
brew install certy

# Verify installation
certy --version
```

## 4. Update Your Main Repository

Add installation instructions to your main certy repository's README:

```markdown
### Installation via Homebrew

```bash
brew tap chriskacerguis/certy
brew install certy
```

### Update

```bash
brew upgrade certy
```
```

## 5. Future Updates

When you release a new version of certy:

### Option A: Automated (Recommended)
1. Go to your homebrew-certy repository on GitHub
2. Click "Actions" tab
3. Select "Update Formula" workflow
4. Click "Run workflow"
5. Enter the new version number
6. Review and merge the created PR

### Option B: Manual
See [UPDATING.md](UPDATING.md) for detailed manual update instructions.

## Important Notes

- The repository MUST be named `homebrew-certy` (or `homebrew-<name>`)
- The repository MUST be public
- Formula files go in the `Formula/` directory
- Users reference it as `chriskacerguis/certy` (the `homebrew-` prefix is implicit)

## Troubleshooting

### "Error: Invalid formula"
Run `brew audit --strict --online Formula/certy.rb` to check for issues.

### "Error: No available formula"
- Make sure the repository is public
- Verify the repository name starts with `homebrew-`
- Try `brew update` to refresh Homebrew's cache

### Testing locally before pushing
```bash
# Test installation from local formula
brew install --build-from-source ./Formula/certy.rb

# Test the binary
certy --version

# Uninstall
brew uninstall certy
```
