cask "vaxtly" do
  version "0.1.15"

  on_arm do
    sha256 "da05e47265632349e68e7fe296155c6e3cb643b34a83d9af4244a4e3d865275a"
    url "https://github.com/vaxtly/vaxtly/releases/download/v#{version}/Vaxtly-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "234d3a15870194120bfb5639cf25340ba23c2a21fd83be9ad64283e361179367"
    url "https://github.com/vaxtly/vaxtly/releases/download/v#{version}/Vaxtly-#{version}-x64.dmg"
  end

  name "Vaxtly"
  desc "API testing tool"
  homepage "https://vaxtly.github.io"

  app "Vaxtly.app"

  zap trash: [
    "~/Library/Application Support/Vaxtly",
    "~/Library/Preferences/com.vaxtly.app.plist",
    "~/Library/Saved Application State/com.vaxtly.app.savedState",
  ]
end
