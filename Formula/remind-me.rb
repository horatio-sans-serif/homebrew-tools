class RemindMe < Formula
  desc "macOS reminder tool with flexible date parsing using Reminders.app"
  homepage "https://github.com/horatio-sans-serif/remind-me"
  url "https://github.com/horatio-sans-serif/remind-me/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "e8c323b2ff41befc1432df481ac5c06bc6907820fe2059edfab45b0f5ea44553"
  license "MIT"

  depends_on "python@3"
  depends_on :macos

  def install
    bin.install "remind-me"
  end

  test do
    assert_match "remind-me", shell_output("#{bin}/remind-me -h", 1)
  end
end
