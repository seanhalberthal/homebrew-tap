class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.2/jiru-darwin-arm64"
      sha256 "c43f3f4fa7d8b9cdb8878f16d9e34b9fbc9c7246ca1510f136faae17f96bf7ae"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.2/jiru-darwin-amd64"
      sha256 "c43f3f4fa7d8b9cdb8878f16d9e34b9fbc9c7246ca1510f136faae17f96bf7ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.2/jiru-linux-arm64"
      sha256 "c43f3f4fa7d8b9cdb8878f16d9e34b9fbc9c7246ca1510f136faae17f96bf7ae"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.2/jiru-linux-amd64"
      sha256 "c43f3f4fa7d8b9cdb8878f16d9e34b9fbc9c7246ca1510f136faae17f96bf7ae"
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
