# Quick Reference

## Automated Updates 🤖

The repository includes an **Auto-Update Formula** workflow that runs daily at 2 AM UTC to automatically check for and apply new Certy releases. No manual intervention needed!

## Repository Setup

1. **Create GitHub repository**: `homebrew-certy` (must be public)
2. **Push this code**:
   ```bash
   git remote add origin https://github.com/chriskacerguis/homebrew-certy.git
   git push -u origin main
   ```

## User Installation

```bash
brew tap chriskacerguis/certy
brew install certy
```

## Update Formula for New Releases

### Automatic (Recommended) 🤖
The formula updates automatically every day when new releases are detected. You can also manually trigger:
1. Go to GitHub → Actions → "Auto-Update Formula"
2. Click "Run workflow"
3. Done!

### Manual Updates
#### Option A: Direct Commit (Quick)
1. Go to GitHub → Actions → "Update Formula (Direct Commit)"
2. Click "Run workflow"
3. Enter version number (e.g., `1.2.0`)
4. Done!

#### Option B: Pull Request (Review Changes)
1. Go to GitHub → Actions → "Update Formula"
2. Click "Run workflow"
3. Enter version number (e.g., `1.2.0`)
4. Merge the created PR

### Completely Manual (If Needed)
See `UPDATING.md` for detailed steps

## Testing Locally

```bash
# Install from local formula
brew install --build-from-source ./Formula/certy.rb

# Test
certy --version

# Uninstall
brew uninstall certy
```

## Important Files

- `Formula/certy.rb` - The Homebrew formula (main file)
- `.github/workflows/auto-update-formula.yml` - Automated daily updates
- `.github/workflows/update-formula-direct.yml` - Manual direct commit workflow
- `.github/workflows/update-formula.yml` - Manual PR workflow
- `README.md` - User-facing documentation
- `SETUP.md` - One-time setup instructions
- `UPDATING.md` - How to update for new releases
- `GITHUB_ACTIONS_SETUP.md` - Workflow setup and comparison

## Repository Naming

- GitHub repo: `homebrew-certy`
- Users tap as: `chriskacerguis/certy` (the `homebrew-` prefix is implicit)

## Common Commands

```bash
# Install
brew install chriskacerguis/certy/certy

# Update
brew upgrade certy

# Uninstall
brew uninstall certy

# Remove tap
brew untap chriskacerguis/certy

# Check for issues
brew audit --strict Formula/certy.rb
```
