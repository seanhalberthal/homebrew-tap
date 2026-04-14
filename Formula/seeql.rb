class Seeql < Formula
  desc "Terminal SQL client for PostgreSQL, MySQL, and SQLite"
  homepage "https://github.com/seanhalberthal/seeql"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.1.0/seeql-darwin-arm64"
      sha256 "2351dc06de0ced5959a03404285457f6cdd54fbfb4575f3ff745169cc707856a"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.1.0/seeql-darwin-amd64"
      sha256 "b15379c31aeaf99fc057bbee42096cd903790f1866519c0dee73535b4952b3be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.1.0/seeql-linux-arm64"
      sha256 "6c45f659721d758ed0eaa3cd074ce6f68a08b3ca24a09e10940001614b20c1a9"
    else
      url "https://github.com/seanhalberthal/seeql/releases/download/v0.1.0/seeql-linux-amd64"
      sha256 "9d93140f27f81b416663c15c4b7329765fcf8514c011293a3153924061bf1ba1"
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
