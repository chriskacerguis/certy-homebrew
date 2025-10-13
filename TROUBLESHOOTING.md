# Troubleshooting GitHub Actions

## Error: "GitHub Actions is not permitted to create or approve pull requests"

This is a GitHub security setting that needs to be enabled in your repository settings.

### Solution: Enable GitHub Actions to Create PRs

1. Go to your repository on GitHub: `https://github.com/chriskacerguis/certy-homebrew`
2. Click on **Settings**
3. In the left sidebar, click **Actions** → **General**
4. Scroll down to **Workflow permissions**
5. Ensure the following settings:
   - Select **Read and write permissions**
   - ✅ Check **Allow GitHub Actions to create and approve pull requests**
6. Click **Save**

### After Enabling

Once you've enabled this setting, you can re-run the failed workflow:

1. Go to the **Actions** tab
2. Find the failed workflow run
3. Click **Re-run all jobs**

The workflow should now successfully create a pull request.

---

## Alternative: Direct Commit Workflow

If you prefer not to use pull requests for formula updates, you can use the alternative workflow that commits directly to the main branch.

See `.github/workflows/update-formula-direct.yml` for a workflow that pushes changes directly without creating a PR.

### When to Use Each Workflow

**Pull Request Workflow** (`update-formula.yml`):
- ✅ Best for team collaboration
- ✅ Allows review before merging
- ✅ Maintains change history with PR discussions
- ⚠️ Requires "Allow GitHub Actions to create PRs" setting enabled

**Direct Commit Workflow** (`update-formula-direct.yml`):
- ✅ Immediate updates
- ✅ No PR approval needed
- ✅ Simpler for solo maintainers
- ⚠️ No review step before changes go live
