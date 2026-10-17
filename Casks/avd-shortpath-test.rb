cask "avd-shortpath-test" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1"
  sha256 arm:          "4879b1bdd242a0b89938c71535e58d300decc905528c901e2eb7a062c6812834",
         arm64_linux:  "ffaa52d29b88aa2f1b1059187a3789bb982b3628bad2db18bab52c10bd085ed6",
         x86_64_linux: "e616e2f178e78542182c84bf0264db255c4b7025119edaa5e954552766cbe3fe"

  on_macos do
    url "https://github.com/cloudchristoph/avd-shortpath-test/releases/download/v#{version}/avd-shortpath-test_#{version}_darwin_universal.tar.gz"
  end
  on_linux do
    url "https://github.com/cloudchristoph/avd-shortpath-test/releases/download/v#{version}/avd-shortpath-test_#{version}_linux_#{arch}.tar.gz"
  end

  name "avd-shortpath-test"
  desc "Check RDP Shortpath for Azure Virtual Desktop and Windows 365 (unofficial)"
  homepage "https://github.com/cloudchristoph/avd-shortpath-test"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "avd-shortpath-test"

  postflight_steps do
    # The binary is not notarized (no Apple Developer account). Homebrew sets
    # the quarantine attribute on casks, so remove it after install.
    on_macos do
      run "/usr/bin/xattr",
          args:         ["-dr", "com.apple.quarantine", "avd-shortpath-test"],
          chdir:        ".",
          must_succeed: false
    end
  end

  # No zap stanza required
end
