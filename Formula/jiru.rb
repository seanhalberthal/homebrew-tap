class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.15/jiru-darwin-arm64"
      sha256 "518a183014b7722e518b103a961ab2aa09150ab7411f13565bd2fd5abdd9fb33"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.15/jiru-darwin-amd64"
      sha256 "518a183014b7722e518b103a961ab2aa09150ab7411f13565bd2fd5abdd9fb33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.15/jiru-linux-arm64"
      sha256 "518a183014b7722e518b103a961ab2aa09150ab7411f13565bd2fd5abdd9fb33"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.15/jiru-linux-amd64"
      sha256 "518a183014b7722e518b103a961ab2aa09150ab7411f13565bd2fd5abdd9fb33"
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
