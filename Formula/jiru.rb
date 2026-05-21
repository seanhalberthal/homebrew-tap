class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.13/jiru-darwin-arm64"
      sha256 "8571f30674aad7f8f8b514e313164dfe2f580c69404cef3fa729cbf7ea0ad28a"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.13/jiru-darwin-amd64"
      sha256 "8571f30674aad7f8f8b514e313164dfe2f580c69404cef3fa729cbf7ea0ad28a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.13/jiru-linux-arm64"
      sha256 "8571f30674aad7f8f8b514e313164dfe2f580c69404cef3fa729cbf7ea0ad28a"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.13/jiru-linux-amd64"
      sha256 "8571f30674aad7f8f8b514e313164dfe2f580c69404cef3fa729cbf7ea0ad28a"
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
