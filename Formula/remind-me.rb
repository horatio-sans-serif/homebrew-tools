class RemindMe < Formula
  desc "macOS calendar reminder tool with flexible date parsing"
  homepage "https://github.com/horatio-sans-serif/remind-me"
  url "https://github.com/horatio-sans-serif/remind-me/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "f9239dd29c14fe00d7efd571e9890a425d50938bd263e3d6c6ed111f67ea4712"
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
