# homebrew-tools

Homebrew tap for personal tools.

## Installation

```bash
brew tap horatio-sans-serif/tools
brew install <formula>
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| `remind-me` | macOS calendar reminder tool with flexible date parsing |

## For Maintainers

### Releasing a New Version

1. Tag and push the new version in the source repo:

   ```bash
   cd ~/projects/remind-me
   git tag v1.0.1
   git push origin v1.0.1
   ```

2. Get the tarball SHA256:

   ```bash
   curl -sL https://github.com/horatio-sans-serif/remind-me/archive/refs/tags/v1.0.1.tar.gz | shasum -a 256
   ```

3. Update the formula:

   ```bash
   cd ~/projects/homebrew-tools
   # Edit Formula/remind-me.rb: update url version and sha256
   ```

4. Commit and push:

   ```bash
   git add Formula/remind-me.rb
   git commit -m "remind-me: update to v1.0.1"
   git push
   ```

5. Users update with:

   ```bash
   brew update && brew upgrade remind-me
   ```

### Testing a Formula Locally

```bash
# Test without installing
brew audit --strict Formula/remind-me.rb

# Install from local formula
brew install --build-from-source Formula/remind-me.rb

# Or test the full tap workflow
brew tap --force horatio-sans-serif/tools
brew install remind-me
```

### Unlinking for Development

To work on the source while having the formula installed:

```bash
brew unlink remind-me
cd ~/projects/remind-me
./remind-me -m "test" -d tomorrow

# Re-link when done
brew link remind-me
```
