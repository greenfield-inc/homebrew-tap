cask "grain" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "5969af852bbbe6756df58aef7bf5e179327a209957e8d91e9353ca17f00596ab",
         intel: "98675f3f502d9c1a8195d33fe13a660bfe61862bd37696b2064a29030782f1dd"

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
