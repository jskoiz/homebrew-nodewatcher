cask "nodewatcher" do
  version "0.3.0"
  sha256 "3f8733f34b3d471ed883023e2ae055f7681c9a90f2a2e8d4620943b62f1698ee"

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
