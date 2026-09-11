# homebrew-tap

Homebrew tap for apps by [@iwunkhaus](https://github.com/iwunkhaus).

## Install

```sh
brew install --cask iwunkhaus/tap/bosun
```

Homebrew taps the repository automatically the first time. To tap it explicitly:

```sh
brew tap iwunkhaus/tap
```

## Casks

| Cask | Description |
| ---- | ----------- |
| [`bosun`](Casks/bosun.rb) | [Bosun](https://bosun.dev/) — menu bar network port, tunnel, VPN, and Docker visibility tool for macOS |

## Notes

Bosun updates itself through [Sparkle](https://sparkle-project.org), so the cask is
declared `version :latest` and points at the immutable-name `latest` download. Homebrew
installs it; the app handles its own updates from then on. Nothing here needs bumping
for a new release.

## Uninstall

```sh
brew uninstall --cask bosun          # remove the app
brew uninstall --zap --cask bosun    # also remove preferences and caches
```
