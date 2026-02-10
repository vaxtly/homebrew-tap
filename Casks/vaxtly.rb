cask "vaxtly" do
  version "0.1.22"

  on_arm do
    sha256 "f64ea7ac7941e4a9ca6e3ebbeb0dc7d8de9dfa635497239caa0595ba1731ce16"
    url "https://github.com/vaxtly/vaxtly/releases/download/v#{version}/Vaxtly-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "b4c4c60be5dfcd9205046f3d985789a29ffd4eb50d2b58a2b4d29c5af1b634d2"
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
