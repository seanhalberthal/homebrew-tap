class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.2/jiru-darwin-arm64"
      sha256 "45f33976f8d11335905a03f2fefd17740bf68518dd029c842a38f6b97834e5ab"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.2/jiru-darwin-amd64"
      sha256 "45f33976f8d11335905a03f2fefd17740bf68518dd029c842a38f6b97834e5ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.2/jiru-linux-arm64"
      sha256 "45f33976f8d11335905a03f2fefd17740bf68518dd029c842a38f6b97834e5ab"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.2.2/jiru-linux-amd64"
      sha256 "45f33976f8d11335905a03f2fefd17740bf68518dd029c842a38f6b97834e5ab"
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
