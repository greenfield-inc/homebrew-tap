cask "pane" do
  arch arm: "arm64", intel: "x64"

  version "2.4.212"
  sha256 arm:   "6a54c438480fad97a938360d4b4b2b160a4ed0e84d605b725ac73e0254cfc70d",
         intel: "a0933fe88dc3e9905f419bf9ab996e977253e592dcbd99783127e30b5153d44a"

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
