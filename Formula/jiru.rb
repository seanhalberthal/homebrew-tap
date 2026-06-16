class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.18/jiru-darwin-arm64"
      sha256 "dc2c1654bdcfe55bf999b5708bed4918285ceac54f63fc8daebc29a3a9238fe4"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.18/jiru-darwin-amd64"
      sha256 "dc2c1654bdcfe55bf999b5708bed4918285ceac54f63fc8daebc29a3a9238fe4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.18/jiru-linux-arm64"
      sha256 "dc2c1654bdcfe55bf999b5708bed4918285ceac54f63fc8daebc29a3a9238fe4"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.18/jiru-linux-amd64"
      sha256 "dc2c1654bdcfe55bf999b5708bed4918285ceac54f63fc8daebc29a3a9238fe4"
    end
  end

  def install
    binary = Dir["jiru-*"].first || "jiru"
    bin.install binary => "jiru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jiru --version")
  end
end
