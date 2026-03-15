class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.1/jiru-darwin-arm64"
      sha256 "3b7d22f092583b24bbfa5dbb310c958cc902ede19f835fffd060a846f72ff330"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.1/jiru-darwin-amd64"
      sha256 "3b7d22f092583b24bbfa5dbb310c958cc902ede19f835fffd060a846f72ff330"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.1/jiru-linux-arm64"
      sha256 "3b7d22f092583b24bbfa5dbb310c958cc902ede19f835fffd060a846f72ff330"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.1/jiru-linux-amd64"
      sha256 "3b7d22f092583b24bbfa5dbb310c958cc902ede19f835fffd060a846f72ff330"
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
