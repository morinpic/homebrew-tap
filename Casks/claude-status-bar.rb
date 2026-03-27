cask "claude-status-bar" do
  version "1.2.0"
  sha256 "c5f5a8a055650ffcfcd011e8728c46dc86d6eab49d681d5be643c9cecd9f3389"

  url "https://github.com/morinpic/Claude-Status-Bar/releases/download/v#{version}/ClaudeStatusBar-1.2.0.zip"
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
