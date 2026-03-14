class Jiratui < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiratui"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiratui/releases/download/v#{version}/jiratui-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/seanhalberthal/jiratui/releases/download/v#{version}/jiratui-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiratui/releases/download/v#{version}/jiratui-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/seanhalberthal/jiratui/releases/download/v#{version}/jiratui-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
