class Seeql < Formula
  desc "Terminal SQL client for PostgreSQL, MySQL, and SQLite"
  homepage "https://github.com/undont/seeql"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/undont/seeql/releases/download/v0.0.2/seeql-darwin-arm64"
      sha256 "6bb891d79359a84f2d74934112446bb8ebedd18294a55c39d67f082a02f5d294"
    else
      url "https://github.com/undont/seeql/releases/download/v0.0.2/seeql-darwin-amd64"
      sha256 "157188c8727e832973f7b2f967a856063ce7fea14ea3ba3ec5a2c61c470a60e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/undont/seeql/releases/download/v0.0.2/seeql-linux-arm64"
      sha256 "2bc3436e63a236f1948e5e7e18dd2111731eb1389cf696824d13ca2a33d91883"
    else
      url "https://github.com/undont/seeql/releases/download/v0.0.2/seeql-linux-amd64"
      sha256 "8c75da1a14ec3d1ccf213404a23063628573e3729d3f95f5c4ac36b11e1f10aa"
    end
  end

  def install
    binary = Dir["seeql-*"].first || "seeql"
    bin.install binary => "seeql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/seeql version")
  end
end
