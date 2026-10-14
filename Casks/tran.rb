cask "tran" do
  version "0.1.1-alpha"
  sha256 "91966064cc1403706a5db2ceada011940cbfcb88f64541da991182160056b5b0"

  url "https://github.com/oxgenet/tran-pub/releases/download/v#{version}/tran-#{version}-macos-universal.dmg"
  name "tran"
  desc "Resident translation tool for working in English as a second language"
  homepage "https://github.com/oxgenet/tran-pub"

  depends_on :macos

  app "tran.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/tran.app"]
  end

  uninstall quit: "net.oxgenet.tran"

  zap trash: [
    "~/Library/Application Support/net.oxgenet.tran",
    "~/Library/Caches/net.oxgenet.tran",
    "~/Library/WebKit/net.oxgenet.tran",
  ]
end
