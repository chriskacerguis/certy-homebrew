# Homebrew Tap for Certy

This is the Homebrew tap for [Certy](https://github.com/chriskacerguis/certy), a Go-based CLI tool for certificate management.

## Installation

To install Certy using Homebrew:

```bash
# Add the tap
brew tap chriskacerguis/certy

# Install certy
brew install certy
```

## Usage

After installation, you can use Certy:

```bash
certy -install
certy example.com
```

## Updating

To update to the latest version:

```bash
brew upgrade certy
```

## Uninstalling

To uninstall:

```bash
brew uninstall certy
brew untap chriskacerguis/certy
```

## About

Certy is a CLI tool for certificate management. For more information, visit the [main repository](https://github.com/chriskacerguis/certy).

## For Maintainers

### Automated Updates

This repository includes GitHub Actions workflows to automate formula updates:

- **Auto-Update Formula** 🤖: Runs daily to automatically check for new releases and update the formula
- **Update Formula (Direct)**: Manually trigger an update that commits directly to main branch
- **Update Formula (PR)**: Manually trigger an update that creates a pull request (requires GitHub Actions PR permissions enabled)

The auto-update workflow runs every day at 2 AM UTC and will automatically update the formula when a new version of Certy is released.

See [TROUBLESHOOTING.md](TROUBLESHOOTING.md) for setup instructions and common issues.

## License

See the [main repository](https://github.com/chriskacerguis/certy) for license information.
