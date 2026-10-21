cask "grain" do
  arch arm: "arm64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "3c8f55dc0e5f0f86257fa8fba67f5ff1569e4d2b169a4714d457fa07777fb9fd",
         intel: "c74caf0d2d0bc8d059b1d5fec30c55e8a35b24552316efa6b5c473201dd1aeaf"

  url "https://updates.rungrain.com/grain/darwin/#{arch}/Grain-darwin-#{arch}-#{version}.zip"
  name "Grain"
  desc "Desktop workspace for building with AI agents"
  homepage "https://rungrain.com/"

  livecheck do
    url "https://updates.rungrain.com/grain/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Grain.app"
  binary "#{appdir}/Grain.app/Contents/Resources/cli/bin/grain"
end
