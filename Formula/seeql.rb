class Seeql < Formula
  desc "Terminal SQL client for PostgreSQL, MySQL, and SQLite"
  homepage "https://github.com/seanhalberthal/seeql"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.2/seeql-darwin-arm64"
      sha256 "43841aae214d14533bd9314e3f1b71d47ce7cdd6dc4da7923f55e752ced55de2"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.2/seeql-darwin-amd64"
      sha256 "16210af968607e04885488292cab30c429a160b1694360d45f19eb853e4a950e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.2/seeql-linux-arm64"
      sha256 "073068e667273d08af9d761b244f3ef95d8eae5ba1025c7746cc9ef034494b73"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.0.2/seeql-linux-amd64"
      sha256 "2c3a650eb858bbaac63d8a575676262f7002aa22edd7fcacd9a8889d828f76a1"
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
