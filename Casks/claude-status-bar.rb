cask "claude-status-bar" do
  version "2.0.0"
  sha256 "a9999a5ae0eb34665d60b6f901d867591ccdb6e427853b08a354e9c73c27a201"

  url "https://github.com/morinpic/Claude-Status-Bar/releases/download/v#{version}/ClaudeStatusBar-2.0.0.zip"
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
