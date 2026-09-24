cask "magic-handoff" do
  version "0.0.7,20"
  sha256 "2dc6e23b0c5846ed38748807a9af5d1283a54f1df66e5821c07ca54ba5a094be"

  url "https://github.com/bekir1184/magic-handoff/releases/download/v#{version.csv.first}/Magic-Handoff-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "github.com/bekir1184/magic-handoff/"
  name "Magic Handoff"
  desc "Moves Magic Keyboard, Trackpad and Mouse between two Macs with one keystroke"
  homepage "https://github.com/bekir1184/magic-handoff"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Magic Handoff.app"

  zap trash: [
    "~/Library/Logs/Magic Handoff.log",
    "~/Library/Preferences/com.bekirersever.magichandoff.plist",
  ]
end
