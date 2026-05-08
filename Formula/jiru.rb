class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.9/jiru-darwin-arm64"
      sha256 "2dd972f6e59920a8d5f20f4c63acdd84d7a22d611261f60d1e4016c7544998d0"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.9/jiru-darwin-amd64"
      sha256 "2dd972f6e59920a8d5f20f4c63acdd84d7a22d611261f60d1e4016c7544998d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.9/jiru-linux-arm64"
      sha256 "2dd972f6e59920a8d5f20f4c63acdd84d7a22d611261f60d1e4016c7544998d0"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.9/jiru-linux-amd64"
      sha256 "2dd972f6e59920a8d5f20f4c63acdd84d7a22d611261f60d1e4016c7544998d0"
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
