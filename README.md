# homebrew-tap

Homebrew tap for apps by [@iwunkhaus](https://github.com/iwunkhaus).

## Install

Homebrew requires third-party taps to be trusted explicitly before it will load
them, so trust comes first:

```sh
brew trust --cask iwunkhaus/tap/bosun
brew tap iwunkhaus/tap
brew install --cask iwunkhaus/tap/bosun
```

To trust everything in this tap instead of one cask at a time, use
`brew trust iwunkhaus/tap`. Trusted entries are recorded in
`~/.homebrew/trust.json`.

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
