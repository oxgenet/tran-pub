cask "tran" do
  version "0.1.5-alpha"
  sha256 "0db8e3753bb3d56736e8b68bd9e83d927035a3120a0651201f9ab6f08a34c42a"

  url "https://github.com/oxgenet/tran-pub/releases/download/v#{version}/tran-#{version}-macos-universal.dmg"
  name "tran"
  desc "Resident translation tool for working in English as a second language"
  homepage "https://github.com/oxgenet/tran-pub"

  depends_on :macos

  app "tran.app"

  uninstall quit: "net.oxgenet.tran"

  zap trash: [
    "~/Library/Application Support/net.oxgenet.tran",
    "~/Library/Caches/net.oxgenet.tran",
    "~/Library/WebKit/net.oxgenet.tran",
  ]
end
