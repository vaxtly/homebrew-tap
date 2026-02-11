cask "vaxtly" do
  version "0.2.1"

  on_arm do
    sha256 "dde9177c0382f2f1dbe8be65e57c8c4580777ddebaae4e44ebd2a43f92a0892f"
    url "https://github.com/vaxtly/vaxtly/releases/download/v#{version}/Vaxtly-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "38f2204d0a9a533335b8f95e7337f9a54d408e160dcc1a9a8460f7f94a3e6740"
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
