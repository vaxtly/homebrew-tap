cask "vaxtly" do
  version "0.6.0"

  on_arm do
    sha256 "edf7074ef4c1fb4cda91d6d5f8208746c90bb931e35e6d0e962be49fd6aa08b8"
    url "https://github.com/vaxtly/app/releases/download/v#{version}/Vaxtly-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "345eeaf2a2fcf6530e6f851c895254f74f2ae8bd5eb16a890ef353c521b65aee"
    url "https://github.com/vaxtly/app/releases/download/v#{version}/Vaxtly-#{version}-x64.dmg"
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
