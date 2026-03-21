class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.0/jiru-darwin-arm64"
      sha256 "ce06b0760404fb0ae0040ed573d50b9cf8044aea7b9f43d58f2b519e45ce801a"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.0/jiru-darwin-amd64"
      sha256 "ce06b0760404fb0ae0040ed573d50b9cf8044aea7b9f43d58f2b519e45ce801a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.0/jiru-linux-arm64"
      sha256 "ce06b0760404fb0ae0040ed573d50b9cf8044aea7b9f43d58f2b519e45ce801a"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.0/jiru-linux-amd64"
      sha256 "ce06b0760404fb0ae0040ed573d50b9cf8044aea7b9f43d58f2b519e45ce801a"
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
