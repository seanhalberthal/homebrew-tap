class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.3/jiru-darwin-arm64"
      sha256 "14958a5066739d0cf53b441fa594c1f954304ff7a0e66354a1d14789b703faba"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.3/jiru-darwin-amd64"
      sha256 "14958a5066739d0cf53b441fa594c1f954304ff7a0e66354a1d14789b703faba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.3/jiru-linux-arm64"
      sha256 "14958a5066739d0cf53b441fa594c1f954304ff7a0e66354a1d14789b703faba"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.3/jiru-linux-amd64"
      sha256 "14958a5066739d0cf53b441fa594c1f954304ff7a0e66354a1d14789b703faba"
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
