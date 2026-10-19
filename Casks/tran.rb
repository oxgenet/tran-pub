cask "tran" do
  version "0.1.9-alpha"
  sha256 "69bba89e66276b8ca7a6335dd8115bbbed63ca1f323a2e1a5f0e07fda383bfcf"

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
