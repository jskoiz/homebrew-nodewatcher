cask "portpourri" do
  version "0.4.0"
  sha256 "a914d7a6954a383ff3b05bfb356f9c20f731bad439261f2a253dc92d9fa642ec"

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
