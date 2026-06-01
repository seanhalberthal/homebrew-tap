class Jiru < Formula
  desc "Terminal UI for Jira built with Bubble Tea"
  homepage "https://github.com/seanhalberthal/jiru"
  version "0.3.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.14/jiru-darwin-arm64"
      sha256 "5aed79f21854320ae3954e6da36c4fec26e2c4607b7e2e832c2dd69b992c56fb"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.14/jiru-darwin-amd64"
      sha256 "5aed79f21854320ae3954e6da36c4fec26e2c4607b7e2e832c2dd69b992c56fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.14/jiru-linux-arm64"
      sha256 "5aed79f21854320ae3954e6da36c4fec26e2c4607b7e2e832c2dd69b992c56fb"
    else
      url "https://github.com/seanhalberthal/jiru/releases/download/v0.3.14/jiru-linux-amd64"
      sha256 "5aed79f21854320ae3954e6da36c4fec26e2c4607b7e2e832c2dd69b992c56fb"
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
