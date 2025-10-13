# Automated Update Workflow 🤖

## ✅ Setup Complete!

Your Homebrew tap now includes an **automated daily update workflow** that keeps your formula in sync with Certy releases!

## 📅 How It Works

The workflow runs **automatically every day at 2 AM UTC** and:

1. **Checks** the main Certy repository for the latest release
2. **Compares** it with the current formula version
3. **Updates** the formula if a new version is found:
   - Downloads all platform binaries (macOS Intel, macOS ARM, Linux AMD64, Linux ARM64)
   - Calculates SHA256 checksums for each binary
   - Updates the formula file with new version and checksums
   - Commits and pushes the changes automatically
4. **Skips** if already up to date (no unnecessary commits)

## 🎯 What This Means for You

**Set it and forget it!** 

- ✅ Your Homebrew formula automatically stays current
- ✅ Users always get the latest version when they `brew install`
- ✅ No manual work needed for routine updates
- ✅ Formula updates within 24 hours of new Certy releases

## 🚀 Manual Trigger (Optional)

You can also run the workflow manually at any time:

1. Go to: https://github.com/chriskacerguis/certy-homebrew/actions
2. Select **"Auto-Update Formula"**
3. Click **"Run workflow"** → **"Run workflow"**
4. Watch it run!

This is useful if:
- You just released a new version and want immediate update
- You want to test the workflow
- You disabled scheduled runs and want to update on-demand

## ⚙️ Configuration

The workflow is configured in `.github/workflows/auto-update-formula.yml`

### Schedule
Currently runs daily at 2 AM UTC. To change the schedule, edit the cron expression:

```yaml
schedule:
  # Run every day at 2 AM UTC
  - cron: '0 2 * * *'
```

Common schedules:
- `'0 */6 * * *'` - Every 6 hours
- `'0 2 * * 0'` - Weekly on Sunday at 2 AM
- `'0 2 1 * *'` - Monthly on the 1st at 2 AM

### Disable Scheduled Runs

If you want to disable automatic updates but keep manual triggering:

1. Open `.github/workflows/auto-update-formula.yml`
2. Comment out or remove the `schedule:` section
3. Keep the `workflow_dispatch:` section
4. Commit and push

## 📊 Monitoring

You can view workflow runs:
- Go to: https://github.com/chriskacerguis/certy-homebrew/actions
- Click on "Auto-Update Formula" workflow
- See all past runs and their results

### Workflow States

- ✅ **Success (green)** - Formula updated or already current
- ❌ **Failed (red)** - Check logs for issues (e.g., release not found, download failed)
- ⚪ **Skipped** - No update needed

## 🔔 Notifications

To get notified about workflow runs:

1. Go to your GitHub notification settings
2. Enable notifications for Actions
3. You'll be notified if the workflow fails

## 🛠️ Troubleshooting

### Workflow Not Running?

- Check that scheduled workflows are enabled in your repo settings
- GitHub may disable scheduled workflows if there's been no activity for 60 days
  - Simply push a commit or manually run the workflow to re-enable

### Updates Not Applying?

- Check the workflow logs in the Actions tab
- Ensure the main Certy repo has proper release tags (format: `v1.2.3`)
- Verify binaries are available at the expected URLs

### Want to Test?

Run the workflow manually (see "Manual Trigger" above) to test without waiting for the schedule.

## 🎉 Benefits

Compared to manual updates:

- ⏱️ **Saves time** - No manual checksums or formula edits
- 🐛 **Reduces errors** - Automated testing and verification
- 📦 **Better UX** - Users get updates faster
- 🔄 **Consistent** - Same process every time
- 📝 **Better git history** - Clear, automated commit messages

## 📚 More Information

- See `UPDATING.md` for all update options (including manual)
- See `GITHUB_ACTIONS_SETUP.md` for workflow comparison
- See `TROUBLESHOOTING.md` for common issues
