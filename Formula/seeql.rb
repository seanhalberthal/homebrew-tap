class Seeql < Formula
  desc "Terminal SQL client for PostgreSQL, MySQL, and SQLite"
  homepage "https://github.com/seanhalberthal/seeql"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.1/seeql-darwin-arm64"
      sha256 "2af68b3a7817abf75b545ad2ef87386fca334a6806cc90d7a1a13ece5049290c"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.1/seeql-darwin-amd64"
      sha256 "c1cabbcf3db6277f7090146b139e59ef38e1c0a1f1b8bc7adcd579a3c2d31fe1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.1/seeql-linux-arm64"
      sha256 "92ec237af072016dc6e1e7beb0ed064ae925a0f38e5c9d0c8cbaaa2b7383a4a4"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.1/seeql-linux-amd64"
      sha256 "5f90bb779d99b6c778acd148c16e853398f1200d0c964bf2f8761692c22eb73e"
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
