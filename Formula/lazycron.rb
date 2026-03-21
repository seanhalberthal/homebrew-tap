class Lazycron < Formula
  desc "Terminal UI for managing cron jobs — locally and over SSH"
  homepage "https://github.com/seanhalberthal/lazycron"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.7/lazycron-darwin-arm64"
      sha256 "ffda9ef5a1a49a390154345f6420a413563221dc0971fe529d87357af3ad6879"

      def install
        bin.install "lazycron-darwin-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.7/lazycron-darwin-amd64"
      sha256 "978fc11fe9013ffc8616ba8a5c000b4c40febb60607cc5209a8cd74e1868926f"

      def install
        bin.install "lazycron-darwin-amd64" => "lazycron"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.7/lazycron-linux-arm64"
      sha256 "a5cc79616e97eb25513bfcdf41c84353e70636e57920a7e5713f65536dbfc1e9"

      def install
        bin.install "lazycron-linux-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.7/lazycron-linux-amd64"
      sha256 "f538621320170cfdc206069d4063d118ac8bb88bea3fccb2e409c0188fdcd4f3"

      def install
        bin.install "lazycron-linux-amd64" => "lazycron"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazycron --version 2>&1")
  end
end
