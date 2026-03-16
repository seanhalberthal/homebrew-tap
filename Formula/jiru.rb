class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.5/jiru-darwin-arm64"
      sha256 "677e9d8c70fc4a580911ba504ecacea6ba22b9a792702bfac336a096a9e1b966"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.5/jiru-darwin-amd64"
      sha256 "677e9d8c70fc4a580911ba504ecacea6ba22b9a792702bfac336a096a9e1b966"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.5/jiru-linux-arm64"
      sha256 "677e9d8c70fc4a580911ba504ecacea6ba22b9a792702bfac336a096a9e1b966"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.5/jiru-linux-amd64"
      sha256 "677e9d8c70fc4a580911ba504ecacea6ba22b9a792702bfac336a096a9e1b966"
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
