class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.5/jiru-darwin-arm64"
      sha256 "95899de45c80b8c31becf2de80f65651d61b64ba466b788c4d95d2909e695ad5"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.5/jiru-darwin-amd64"
      sha256 "95899de45c80b8c31becf2de80f65651d61b64ba466b788c4d95d2909e695ad5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.5/jiru-linux-arm64"
      sha256 "95899de45c80b8c31becf2de80f65651d61b64ba466b788c4d95d2909e695ad5"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.5/jiru-linux-amd64"
      sha256 "95899de45c80b8c31becf2de80f65651d61b64ba466b788c4d95d2909e695ad5"
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
