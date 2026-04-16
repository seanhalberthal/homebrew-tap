class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.8/jiru-darwin-arm64"
      sha256 "e4f0ab1b4f4068fdb470cf27aa5e5c7804de1eecd6a0dec72c96b9079587439b"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.8/jiru-darwin-amd64"
      sha256 "e4f0ab1b4f4068fdb470cf27aa5e5c7804de1eecd6a0dec72c96b9079587439b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.8/jiru-linux-arm64"
      sha256 "e4f0ab1b4f4068fdb470cf27aa5e5c7804de1eecd6a0dec72c96b9079587439b"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.8/jiru-linux-amd64"
      sha256 "e4f0ab1b4f4068fdb470cf27aa5e5c7804de1eecd6a0dec72c96b9079587439b"
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
