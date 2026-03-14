class Jiratui < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiratui"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiratui/releases/download/v0.1.1/jiratui-darwin-arm64"
      sha256 "6449e9f51a94674389b2a40b8364d995bb03472c4d968d4fd3bffdac1d56c44b"
    else
      url "https://github.com/seanhalberthal/jiratui/releases/download/v0.1.1/jiratui-darwin-amd64"
      sha256 "6449e9f51a94674389b2a40b8364d995bb03472c4d968d4fd3bffdac1d56c44b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiratui/releases/download/v0.1.1/jiratui-linux-arm64"
      sha256 "6449e9f51a94674389b2a40b8364d995bb03472c4d968d4fd3bffdac1d56c44b"
    else
      url "https://github.com/seanhalberthal/jiratui/releases/download/v0.1.1/jiratui-linux-amd64"
      sha256 "6449e9f51a94674389b2a40b8364d995bb03472c4d968d4fd3bffdac1d56c44b"
    end
  end

  def install
    binary = Dir["jiratui-*"].first || "jiratui"
    bin.install binary => "jiratui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jiratui --version")
  end
end
