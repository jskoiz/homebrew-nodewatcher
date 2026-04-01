cask "portpourri" do
  version "0.4.2"
  sha256 "6c539576623fa541adcb90ad4ff4ff3998939be2d56741a8ea5fdcd430fb1a5c"

  url "https://github.com/jskoiz/portpourri/releases/download/v#{version}/Portpourri-#{version}-mac.zip"
  name "Portpourri"
  desc "macOS menu bar app for monitoring local dev port usage"
  homepage "https://github.com/jskoiz/portpourri"

  depends_on macos: ">= :sonoma"

  app "Portpourri.app"

  zap trash: [
    "~/Library/Preferences/dev.portpourri.app.plist",
  ]
end
