class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.4/jiru-darwin-arm64"
      sha256 "d1f5a93d6156d1ed99d60f9dd937d37d12274337578577ae12a203b337a26cd5"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.4/jiru-darwin-amd64"
      sha256 "d1f5a93d6156d1ed99d60f9dd937d37d12274337578577ae12a203b337a26cd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.4/jiru-linux-arm64"
      sha256 "d1f5a93d6156d1ed99d60f9dd937d37d12274337578577ae12a203b337a26cd5"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.4/jiru-linux-amd64"
      sha256 "d1f5a93d6156d1ed99d60f9dd937d37d12274337578577ae12a203b337a26cd5"
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
