cask "claude-status-bar" do
  version "2.6.0"
  sha256 "8834344060548ea4b58304f46c852a91eb56923b80530a7fc41c35c8a9289891"

  url "https://github.com/morinpic/Claude-Status-Bar/releases/download/v#{version}/ClaudeStatusBar-2.6.0.zip"
  name "Claude Status Bar"
  desc "Menu bar app that monitors Claude service status"
  homepage "https://github.com/morinpic/Claude-Status-Bar"

  depends_on macos: ">= :sonoma"

  app "ClaudeStatusBar.app"

  zap trash: [
    "~/Library/Caches/com.morinpic.ClaudeStatusBar",
    "~/Library/Preferences/com.morinpic.ClaudeStatusBar.plist",
  ]
end
