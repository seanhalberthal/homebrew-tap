class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.11/jiru-darwin-arm64"
      sha256 "442bbcf1ed0cf36bbcd797e29a9f09598af3f9d5f05e11db273a0d6743f2c6b4"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.11/jiru-darwin-amd64"
      sha256 "442bbcf1ed0cf36bbcd797e29a9f09598af3f9d5f05e11db273a0d6743f2c6b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.11/jiru-linux-arm64"
      sha256 "442bbcf1ed0cf36bbcd797e29a9f09598af3f9d5f05e11db273a0d6743f2c6b4"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.11/jiru-linux-amd64"
      sha256 "442bbcf1ed0cf36bbcd797e29a9f09598af3f9d5f05e11db273a0d6743f2c6b4"
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
