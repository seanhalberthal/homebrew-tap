class Seeql < Formula
  desc "Terminal SQL client for PostgreSQL, MySQL, and SQLite"
  homepage "https://github.com/seanhalberthal/seeql"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.0/seeql-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.0/seeql-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.0/seeql-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.0/seeql-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
