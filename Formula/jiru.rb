class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.6/jiru-darwin-arm64"
      sha256 "382850019e84bdef0625741d174b0eb430cc08e6a220449d82bb03bab73caff7"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.6/jiru-darwin-amd64"
      sha256 "382850019e84bdef0625741d174b0eb430cc08e6a220449d82bb03bab73caff7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.6/jiru-linux-arm64"
      sha256 "382850019e84bdef0625741d174b0eb430cc08e6a220449d82bb03bab73caff7"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.6/jiru-linux-amd64"
      sha256 "382850019e84bdef0625741d174b0eb430cc08e6a220449d82bb03bab73caff7"
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
