class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.7/jiru-darwin-arm64"
      sha256 "bee31ecca7c14bc1f73d11839e1cd1745dce2130d78ff98540470073aefa7311"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.7/jiru-darwin-amd64"
      sha256 "bee31ecca7c14bc1f73d11839e1cd1745dce2130d78ff98540470073aefa7311"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.7/jiru-linux-arm64"
      sha256 "bee31ecca7c14bc1f73d11839e1cd1745dce2130d78ff98540470073aefa7311"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.7/jiru-linux-amd64"
      sha256 "bee31ecca7c14bc1f73d11839e1cd1745dce2130d78ff98540470073aefa7311"
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
