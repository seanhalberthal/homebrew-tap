class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.2/jiru-darwin-arm64"
      sha256 "ace23f407b94958d81edf9d59e2f3807294287af3d5793ff6d68463c880324f6"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.2/jiru-darwin-amd64"
      sha256 "ace23f407b94958d81edf9d59e2f3807294287af3d5793ff6d68463c880324f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.2/jiru-linux-arm64"
      sha256 "ace23f407b94958d81edf9d59e2f3807294287af3d5793ff6d68463c880324f6"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.2/jiru-linux-amd64"
      sha256 "ace23f407b94958d81edf9d59e2f3807294287af3d5793ff6d68463c880324f6"
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
