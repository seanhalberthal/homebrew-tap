class Seeql < Formula
  desc "Terminal SQL client for PostgreSQL, MySQL, and SQLite"
  homepage "https://github.com/seanhalberthal/seeql"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.4/seeql-darwin-arm64"
      sha256 "788e6243c5b761d3af625ed3511b00bd2bf45b2d60eec4fb6e17450425ef2336"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.4/seeql-darwin-amd64"
      sha256 "b639c69fe3a713534329ddd63bdec1be1fa01a0670392ad1e116fec1e58528eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.4/seeql-linux-arm64"
      sha256 "6cb952da2bc00b9347e7b07dc64f754c7f3deef4c78f168eb5a99bd0eb7a2a14"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.4/seeql-linux-amd64"
      sha256 "808ebbe261140eb67de06a971368cf352163bdff5749dae82ab30db5cfd9d7e7"
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
