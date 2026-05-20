class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.12/jiru-darwin-arm64"
      sha256 "d2b1e8fd80f3b5c2842c5636abfafaeddce0e1e0797cd41653ffe55097ca7216"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.12/jiru-darwin-amd64"
      sha256 "d2b1e8fd80f3b5c2842c5636abfafaeddce0e1e0797cd41653ffe55097ca7216"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.12/jiru-linux-arm64"
      sha256 "d2b1e8fd80f3b5c2842c5636abfafaeddce0e1e0797cd41653ffe55097ca7216"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.12/jiru-linux-amd64"
      sha256 "d2b1e8fd80f3b5c2842c5636abfafaeddce0e1e0797cd41653ffe55097ca7216"
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
