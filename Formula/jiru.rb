class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.4/jiru-darwin-arm64"
      sha256 "ff5b64fca1add27a39a57e0c2ac93e3e984f28ec442f7cddbf145dc234a1ddcb"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.4/jiru-darwin-amd64"
      sha256 "ff5b64fca1add27a39a57e0c2ac93e3e984f28ec442f7cddbf145dc234a1ddcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.4/jiru-linux-arm64"
      sha256 "ff5b64fca1add27a39a57e0c2ac93e3e984f28ec442f7cddbf145dc234a1ddcb"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.4/jiru-linux-amd64"
      sha256 "ff5b64fca1add27a39a57e0c2ac93e3e984f28ec442f7cddbf145dc234a1ddcb"
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
