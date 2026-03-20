class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.0/jiru-darwin-arm64"
      sha256 "29fde591aa6260c6364f404cfce71688887159735af4852782a665c57dbf6072"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.0/jiru-darwin-amd64"
      sha256 "29fde591aa6260c6364f404cfce71688887159735af4852782a665c57dbf6072"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.0/jiru-linux-arm64"
      sha256 "29fde591aa6260c6364f404cfce71688887159735af4852782a665c57dbf6072"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.0/jiru-linux-amd64"
      sha256 "29fde591aa6260c6364f404cfce71688887159735af4852782a665c57dbf6072"
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
