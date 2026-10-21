cask "pane" do
  arch arm: "arm64", intel: "x64"

  version "2.4.193"
  sha256 arm:   "07fd0b9e9472204954a33960c6a822f70f9e057780afeafa6534d964324e4276",
         intel: "a1a80402f4026978a4e0eb2f862f77e95d658df72b000460fdd9e762848466e6"

  url "https://github.com/greenfield-inc/Pane/releases/download/v#{version}/Pane-#{version}-macOS-#{arch}.dmg"
  name "Pane"
  desc "Run any coding agent in terminals, from desktop or phone"
  homepage "https://runpane.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Pane.app"

  zap trash: [
    "~/.pane",
    "~/Library/Application Support/Pane",
    "~/Library/Caches/com.dcouple.pane",
    "~/Library/Caches/com.dcouple.pane.ShipIt",
    "~/Library/Caches/pane-updater",
    "~/Library/HTTPStorages/com.dcouple.pane",
    "~/Library/Preferences/com.dcouple.pane.plist",
    "~/Library/Saved Application State/com.dcouple.pane.savedState",
  ]
end
