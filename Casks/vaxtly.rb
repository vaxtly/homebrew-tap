cask "vaxtly" do
  version "0.8.8"

  on_arm do
    sha256 "0ce646d9ed6e0a4535956ffecc672b563fbfd4c1bcc4ab7fb30684e1a7dfd465"
    url "https://github.com/vaxtly/app/releases/download/v#{version}/Vaxtly-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "59fc0aa57c82e1f0037b8f3457e47ade77a95888bf96ab783a7ecd575b1855d9"
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
