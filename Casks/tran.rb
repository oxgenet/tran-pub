cask "tran" do
  version "0.1.8-alpha"
  sha256 "0dea8a949c52cf90ffc8ec6ad5f7be70c33aea96c65a2c183e2ceac99ab2d70b"

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
