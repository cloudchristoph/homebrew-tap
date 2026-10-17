# CloudChristoph Homebrew tap

Casks for CloudChristoph's command-line tools on macOS and Linux.

```bash
brew install --cask cloudchristoph/tap/az-firewall-watch
brew install --cask cloudchristoph/tap/avd-shortpath-test
```

| Cask | Platforms | Description |
|---|---|---|
| [`az-firewall-watch`](https://github.com/cloudchristoph/az-firewall-watch) | macOS Apple Silicon, Linux x86_64 and arm64 | Live terminal viewer for Azure Firewall logs streamed from Event Hub, with the policy decision behind each row. Unofficial, not affiliated with Microsoft. |
| [`avd-shortpath-test`](https://github.com/cloudchristoph/avd-shortpath-test) | macOS, Linux x86_64 and arm64 | Check RDP Shortpath (STUN, TURN, NAT) for Azure Virtual Desktop and Windows 365. Unofficial, not affiliated with Microsoft. |

Update with `brew upgrade --cask <cask>`. For az-firewall-watch,
`brew uninstall --cask --zap az-firewall-watch` also deletes its configuration.

Each cask is published by the release workflow of its tool repository: GoReleaser for
avd-shortpath-test, the template in `packaging/homebrew/` for az-firewall-watch. Do not
edit the files in `Casks/` by hand; the next release overwrites them.
