class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.0/jiru-darwin-arm64"
      sha256 "8688cd8a0c478bc307888b5f4ea31563adc31805f6c8c249ec83f0b182f336b8"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.0/jiru-darwin-amd64"
      sha256 "8688cd8a0c478bc307888b5f4ea31563adc31805f6c8c249ec83f0b182f336b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.0/jiru-linux-arm64"
      sha256 "8688cd8a0c478bc307888b5f4ea31563adc31805f6c8c249ec83f0b182f336b8"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.0/jiru-linux-amd64"
      sha256 "8688cd8a0c478bc307888b5f4ea31563adc31805f6c8c249ec83f0b182f336b8"
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
