class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.9/jiru-darwin-arm64"
      sha256 "88e6a5cd8e1f6acc3a5a966f1f312b8626f5b6582ee4765db1e2b35de2779536"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.9/jiru-darwin-amd64"
      sha256 "88e6a5cd8e1f6acc3a5a966f1f312b8626f5b6582ee4765db1e2b35de2779536"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.9/jiru-linux-arm64"
      sha256 "88e6a5cd8e1f6acc3a5a966f1f312b8626f5b6582ee4765db1e2b35de2779536"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.1.9/jiru-linux-amd64"
      sha256 "88e6a5cd8e1f6acc3a5a966f1f312b8626f5b6582ee4765db1e2b35de2779536"
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
