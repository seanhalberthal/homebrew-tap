class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.0/jiru-darwin-arm64"
      sha256 "6449e9f51a94674389b2a40b8364d995bb03472c4d968d4fd3bffdac1d56c44b"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.0/jiru-darwin-amd64"
      sha256 "6449e9f51a94674389b2a40b8364d995bb03472c4d968d4fd3bffdac1d56c44b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.0/jiru-linux-arm64"
      sha256 "6449e9f51a94674389b2a40b8364d995bb03472c4d968d4fd3bffdac1d56c44b"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.0/jiru-linux-amd64"
      sha256 "6449e9f51a94674389b2a40b8364d995bb03472c4d968d4fd3bffdac1d56c44b"
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
