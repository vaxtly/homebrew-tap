cask "vaxtly" do
  version "0.1.25"

  on_arm do
    sha256 "a14fc90c0c55e81d68876d5d8a711f5f53b93e1a10a0cfc8b3f98b2a297f7b19"
    url "https://github.com/vaxtly/vaxtly/releases/download/v#{version}/Vaxtly-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "eea6389722efd529b3d758effe41c46e67424c98f23d523313eff043673c6fe9"
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
