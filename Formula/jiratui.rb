class Jiratui < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiratui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiratui/releases/download/v0.1.0/jiratui-darwin-arm64"
      sha256 "4453f4053e39f364991ce18d4c96f8665e6f3c11cad4fd2ff269c6c3f8656f25"
    else
      url "https://github.com/seanhalberthal/jiratui/releases/download/v0.1.0/jiratui-darwin-amd64"
      sha256 "4453f4053e39f364991ce18d4c96f8665e6f3c11cad4fd2ff269c6c3f8656f25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiratui/releases/download/v0.1.0/jiratui-linux-arm64"
      sha256 "4453f4053e39f364991ce18d4c96f8665e6f3c11cad4fd2ff269c6c3f8656f25"
    else
      url "https://github.com/seanhalberthal/jiratui/releases/download/v0.1.0/jiratui-linux-amd64"
      sha256 "4453f4053e39f364991ce18d4c96f8665e6f3c11cad4fd2ff269c6c3f8656f25"
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
