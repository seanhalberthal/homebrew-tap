class Lazycron < Formula
  desc "Terminal UI for managing cron jobs — locally and over SSH"
  homepage "https://github.com/seanhalberthal/lazycron"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.3/lazycron-darwin-arm64"
      sha256 "539e1a7833d92f9c970b82c6c0f7f6f222450ea7ee69fc2fade9023be9a2833e"

      def install
        bin.install "lazycron-darwin-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.3/lazycron-darwin-amd64"
      sha256 "affc8c7a486ed75c918b1e0fecd963926316d6b22ad3492ffc05ec053a47cb43"

      def install
        bin.install "lazycron-darwin-amd64" => "lazycron"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.3/lazycron-linux-arm64"
      sha256 "17700fe81e70384cd8444f4a067898e9906ac9fd7deda24259e90d53998da739"

      def install
        bin.install "lazycron-linux-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.3/lazycron-linux-amd64"
      sha256 "0f496cfa8d9809f371521b4ea401a82539b16335e0bd70c2438496f6b9ffa7d1"

      def install
        bin.install "lazycron-linux-amd64" => "lazycron"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazycron --version 2>&1")
  end
end
