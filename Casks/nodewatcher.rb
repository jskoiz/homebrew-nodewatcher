cask "nodewatcher" do
  version "0.2.6"
  sha256 "c96230d643c5ab2112cbd5e19e40852539824fb605088230883c75f8b0b8fe2a"

  url "https://github.com/jskoiz/node-watcher/releases/download/v#{version}/NodeWatcher-#{version}-mac.zip"
  name "NodeWatcher"
  desc "macOS menu bar app for monitoring local dev port usage"
  homepage "https://github.com/jskoiz/node-watcher"

  depends_on macos: ">= :sonoma"

  app "NodeWatcher.app"

  zap trash: [
    "~/Library/Preferences/dev.nodewatcher.app.plist",
  ]
end
