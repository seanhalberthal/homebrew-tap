class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.1/jiru-darwin-arm64"
      sha256 "c1777c27c3679042796bf75999229abbd33c2799e699257df7d9b25e69c95dea"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.1/jiru-darwin-amd64"
      sha256 "c1777c27c3679042796bf75999229abbd33c2799e699257df7d9b25e69c95dea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.1/jiru-linux-arm64"
      sha256 "c1777c27c3679042796bf75999229abbd33c2799e699257df7d9b25e69c95dea"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.1/jiru-linux-amd64"
      sha256 "c1777c27c3679042796bf75999229abbd33c2799e699257df7d9b25e69c95dea"
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
