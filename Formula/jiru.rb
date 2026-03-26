class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.3/jiru-darwin-arm64"
      sha256 "4e0c6f27de167230d3a4309c9d51ff716110bc0bc6d2a225d49aabcfd49f8086"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.3/jiru-darwin-amd64"
      sha256 "4e0c6f27de167230d3a4309c9d51ff716110bc0bc6d2a225d49aabcfd49f8086"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.3/jiru-linux-arm64"
      sha256 "4e0c6f27de167230d3a4309c9d51ff716110bc0bc6d2a225d49aabcfd49f8086"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.3/jiru-linux-amd64"
      sha256 "4e0c6f27de167230d3a4309c9d51ff716110bc0bc6d2a225d49aabcfd49f8086"
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
