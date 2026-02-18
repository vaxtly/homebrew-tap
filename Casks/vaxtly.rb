cask "vaxtly" do
  version "0.3.1"

  on_arm do
    sha256 "db99079c778232e756d3c1c7256b1998ab3b6542177c9213be426a36cf53cf70"
    url "https://github.com/vaxtly/vaxtly/releases/download/v#{version}/Vaxtly-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "7f2c9f2d1b5e1198efcda297b545dfcab3a04f7a338e8e5c0960b53a7ef077d3"
    url "https://github.com/vaxtly/vaxtly/releases/download/v#{version}/Vaxtly-#{version}-x64.dmg"
  end

  name "Vaxtly"
  desc "API testing tool"
  homepage "https://vaxtly.github.io"

  app "Vaxtly.app"

  postflight do
    system "xattr", "-dr", "com.apple.quarantine", "#{appdir}/Vaxtly.app"
  end

  zap trash: [
    "~/Library/Application Support/Vaxtly",
    "~/Library/Preferences/com.vaxtly.app.plist",
    "~/Library/Saved Application State/com.vaxtly.app.savedState",
  ]
end
