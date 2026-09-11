cask "bosun" do
  version :latest
  sha256 :no_check

  url "https://dl.bosun.dev/latest/Bosun.dmg"
  name "Bosun"
  desc "Menu bar network port, tunnel, VPN, and Docker visibility tool"
  homepage "https://bosun.dev/"

  depends_on macos: :sonoma

  app "Bosun.app"

  uninstall quit: "dev.cuprite.bosun"

  zap trash: [
    "~/Library/Application Support/Bosun",
    "~/Library/Application Support/CrashReporter/Bosun_*.plist",
    "~/Library/Caches/dev.cuprite.bosun",
    "~/Library/HTTPStorages/dev.cuprite.bosun",
    "~/Library/Preferences/dev.cuprite.bosun.plist",
  ]
end
