class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.8/jiru-darwin-arm64"
      sha256 "e245b6c1507988a8b97ca4d02c5bbe4ca33f4c9f3038f73b4854889905003d56"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.8/jiru-darwin-amd64"
      sha256 "e245b6c1507988a8b97ca4d02c5bbe4ca33f4c9f3038f73b4854889905003d56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.8/jiru-linux-arm64"
      sha256 "e245b6c1507988a8b97ca4d02c5bbe4ca33f4c9f3038f73b4854889905003d56"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.8/jiru-linux-amd64"
      sha256 "e245b6c1507988a8b97ca4d02c5bbe4ca33f4c9f3038f73b4854889905003d56"
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
