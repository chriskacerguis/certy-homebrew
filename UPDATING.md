# Updating the Formula

This guide explains how to update the Certy Homebrew formula when a new version is released.

## Automated Update (Recommended)

The workflow has been configured with the necessary permissions to create pull requests automatically.

1. Go to the GitHub Actions tab in this repository
2. Select the "Update Formula" workflow
3. Click "Run workflow"
4. Enter the new version number (e.g., `1.2.0`)
5. Click "Run workflow"
6. The workflow will create a pull request with the updated formula
7. Review and merge the pull request

**Note**: The workflow requires `contents: write` and `pull-requests: write` permissions, which are already configured in the workflow file.

## Manual Update

If you prefer to update manually or the automated workflow fails:

### Prerequisites

- Access to the release binaries on GitHub
- `curl` and `shasum` installed

### Steps

1. **Download the new binaries:**

```bash
VERSION="1.2.0"  # Replace with your version

curl -L -o certy-darwin-amd64 "https://github.com/chriskacerguis/certy/releases/download/v${VERSION}/certy-darwin-amd64"
curl -L -o certy-darwin-arm64 "https://github.com/chriskacerguis/certy/releases/download/v${VERSION}/certy-darwin-arm64"
curl -L -o certy-linux-amd64 "https://github.com/chriskacerguis/certy/releases/download/v${VERSION}/certy-linux-amd64"
curl -L -o certy-linux-arm64 "https://github.com/chriskacerguis/certy/releases/download/v${VERSION}/certy-linux-arm64"
```

2. **Calculate SHA256 checksums:**

```bash
shasum -a 256 certy-darwin-amd64
shasum -a 256 certy-darwin-arm64
shasum -a 256 certy-linux-amd64
shasum -a 256 certy-linux-arm64
```

3. **Update `Formula/certy.rb`:**

- Update the `version` line
- Update all four `url` lines with the new version
- Update all four `sha256` lines with the checksums from step 2

4. **Test the formula locally:**

```bash
brew install --build-from-source ./Formula/certy.rb
certy --version
```

5. **Commit and push:**

```bash
git add Formula/certy.rb
git commit -m "Update certy to v${VERSION}"
git push
```

## Testing

After updating, users can test the installation:

```bash
# Uninstall old version
brew uninstall certy

# Reinstall
brew install chriskacerguis/certy/certy

# Verify version
certy --version
```

## Troubleshooting

### Checksum mismatch error

If users report a checksum mismatch error, verify that:
1. The checksums in the formula match the actual binary checksums
2. The version number in the URLs is correct
3. The binaries haven't been re-uploaded to the same version tag

### Formula not found

Make sure users have tapped the repository:
```bash
brew tap chriskacerguis/certy
```
