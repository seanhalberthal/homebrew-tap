class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.10/jiru-darwin-arm64"
      sha256 "ac7a7fec7ccd4bc01ba253a56077aa18e49c604156ea320616acf32f6ae23e5e"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.10/jiru-darwin-amd64"
      sha256 "ac7a7fec7ccd4bc01ba253a56077aa18e49c604156ea320616acf32f6ae23e5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.10/jiru-linux-arm64"
      sha256 "ac7a7fec7ccd4bc01ba253a56077aa18e49c604156ea320616acf32f6ae23e5e"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.10/jiru-linux-amd64"
      sha256 "ac7a7fec7ccd4bc01ba253a56077aa18e49c604156ea320616acf32f6ae23e5e"
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
