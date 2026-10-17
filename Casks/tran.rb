cask "tran" do
  version "0.1.4-alpha"
  sha256 "20e49832beb9f25e5f8612a7b07ef83844a7b4c8d0dbfa1fc7a34e7eb7c6c259"

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
