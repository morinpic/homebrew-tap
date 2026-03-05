cask "claude-status-bar" do
  version "1.1.0"
  sha256 "0ef0cb511c990488a055be72b1248fd01940d8b6159c52af809b9b1a86078647"

  url "https://github.com/morinpic/Claude-Status-Bar/releases/download/v#{version}/ClaudeStatusBar-1.1.0.zip"
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
