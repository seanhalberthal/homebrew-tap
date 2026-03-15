class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.3/jiru-darwin-arm64"
      sha256 "3970cc134f67fdfcd1881a9d1a1775967e6337b8e1d296d3a0a7708579ea4522"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.3/jiru-darwin-amd64"
      sha256 "3970cc134f67fdfcd1881a9d1a1775967e6337b8e1d296d3a0a7708579ea4522"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.3/jiru-linux-arm64"
      sha256 "3970cc134f67fdfcd1881a9d1a1775967e6337b8e1d296d3a0a7708579ea4522"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.3/jiru-linux-amd64"
      sha256 "3970cc134f67fdfcd1881a9d1a1775967e6337b8e1d296d3a0a7708579ea4522"
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
