cask "grain" do
  arch arm: "arm64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "5cb48932570140c88de706d5dcce2c7846ab841073c86083dd2440cc8dd3c97d",
         intel: "1462f8e1eb73bab005c49ac84d4aed73766a0174e3d4e53627c7648394196d97"

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
