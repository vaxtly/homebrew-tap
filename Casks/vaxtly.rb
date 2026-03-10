cask "vaxtly" do
  version "0.8.0"

  on_arm do
    sha256 "2a564edd37e754afa93d552539678d6a9e47b90e40999d4cb2be80e69b9a4529"
    url "https://github.com/vaxtly/app/releases/download/v#{version}/Vaxtly-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "feb62e248294d5acba18cbf38a8795d7c92795f0d00dd5a2462d51d7eb743a38"
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
