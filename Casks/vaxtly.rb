cask "vaxtly" do
  version "0.1.16"

  on_arm do
    sha256 "6ffa085df44c9e5c03d1cb0c9a8fe73a572e2e512c849e5f86eed443db8202ef"
    url "https://github.com/vaxtly/vaxtly/releases/download/v#{version}/Vaxtly-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "b0bf6f5ba640e3fffcea54efe92d2ab6404acb9e417147d9a4ab0edd89643f5f"
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
