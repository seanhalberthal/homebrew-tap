class Lazycron < Formula
  desc "Terminal UI for managing cron jobs — locally and over SSH"
  homepage "https://github.com/seanhalberthal/lazycron"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.0/lazycron-darwin-arm64"
      sha256 "75171230f8235a9ad1f4a75249bd53499d1b986ef3c362a5b587ee01d6a63270"

      def install
        bin.install "lazycron-darwin-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.0/lazycron-darwin-amd64"
      sha256 "b395c0fde6735c92524cbb3326cfa55995e98b729ba05e35257a31cf913f3563"

      def install
        bin.install "lazycron-darwin-amd64" => "lazycron"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.0/lazycron-linux-arm64"
      sha256 "d1ed24c4e1dd1591e947d96ba0a7c4186fd7c9b9603a6a356351760502e30d78"

      def install
        bin.install "lazycron-linux-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.0/lazycron-linux-amd64"
      sha256 "b3748eabce5bc45a9a205ae4cd9702e95870bcb9f829177c9480d9c3bc639a11"

      def install
        bin.install "lazycron-linux-amd64" => "lazycron"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazycron --version 2>&1")
  end
end
