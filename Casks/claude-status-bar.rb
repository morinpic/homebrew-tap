cask "claude-status-bar" do
  version "2.0.0-rc.4"
  sha256 "da0ece6f31f6d4ed7ba2fbf1ddd99f55631cfc5c477bb38606ca40d5d3fe9392"

  url "https://github.com/morinpic/Claude-Status-Bar/releases/download/v#{version}/ClaudeStatusBar-2.0.0-rc.4.zip"
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
