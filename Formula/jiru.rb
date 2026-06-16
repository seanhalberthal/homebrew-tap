class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.17/jiru-darwin-arm64"
      sha256 "1ee248c00309824cc6e8ad4910bf7820e8fb265c5e75a0d2795c2a7f83d47734"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.17/jiru-darwin-amd64"
      sha256 "1ee248c00309824cc6e8ad4910bf7820e8fb265c5e75a0d2795c2a7f83d47734"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.17/jiru-linux-arm64"
      sha256 "1ee248c00309824cc6e8ad4910bf7820e8fb265c5e75a0d2795c2a7f83d47734"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.17/jiru-linux-amd64"
      sha256 "1ee248c00309824cc6e8ad4910bf7820e8fb265c5e75a0d2795c2a7f83d47734"
    end
  end

  def install
    binary = Dir["jiru-*"].first || "jiru"
    bin.install binary => "jiru"
    generate_completions_from_executable(bin/"jiru", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jiru --version")
  end
end
