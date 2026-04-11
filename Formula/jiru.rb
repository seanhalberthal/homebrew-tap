class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.6/jiru-darwin-arm64"
      sha256 "457e5917dc467baf0abe3de32de3bbf3fb76ecced2a8c025a170e96ae20b1e8f"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.6/jiru-darwin-amd64"
      sha256 "457e5917dc467baf0abe3de32de3bbf3fb76ecced2a8c025a170e96ae20b1e8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.6/jiru-linux-arm64"
      sha256 "457e5917dc467baf0abe3de32de3bbf3fb76ecced2a8c025a170e96ae20b1e8f"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.6/jiru-linux-amd64"
      sha256 "457e5917dc467baf0abe3de32de3bbf3fb76ecced2a8c025a170e96ae20b1e8f"
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
