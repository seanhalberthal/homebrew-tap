class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.7/jiru-darwin-arm64"
      sha256 "68590d685d6b15b390c2b5a4bd42f96c751c6da59748a0b233a357ee6d5af8a1"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.7/jiru-darwin-amd64"
      sha256 "68590d685d6b15b390c2b5a4bd42f96c751c6da59748a0b233a357ee6d5af8a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.7/jiru-linux-arm64"
      sha256 "68590d685d6b15b390c2b5a4bd42f96c751c6da59748a0b233a357ee6d5af8a1"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.7/jiru-linux-amd64"
      sha256 "68590d685d6b15b390c2b5a4bd42f96c751c6da59748a0b233a357ee6d5af8a1"
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
