class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.1/jiru-darwin-arm64"
      sha256 "7adc1e504bb12be0530e4dd87c2a1a3268b490967fe3383f3379679432b60d5f"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.1/jiru-darwin-amd64"
      sha256 "7adc1e504bb12be0530e4dd87c2a1a3268b490967fe3383f3379679432b60d5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.1/jiru-linux-arm64"
      sha256 "7adc1e504bb12be0530e4dd87c2a1a3268b490967fe3383f3379679432b60d5f"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.1/jiru-linux-amd64"
      sha256 "7adc1e504bb12be0530e4dd87c2a1a3268b490967fe3383f3379679432b60d5f"
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
