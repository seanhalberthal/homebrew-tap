class Lazycron < Formula
  desc "Terminal UI for managing cron jobs — locally and over SSH"
  homepage "https://github.com/seanhalberthal/lazycron"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.2/lazycron-darwin-arm64"
      sha256 "15c78309ddca4a8d562558a253c2c400631c1ce450ed7091f5875e8ad0eb2279"

      def install
        bin.install "lazycron-darwin-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.2/lazycron-darwin-amd64"
      sha256 "a688c4a5d7911094b2dfedd5a475e75e23703d7cb6bdea4f8b284a7944e7bfd6"

      def install
        bin.install "lazycron-darwin-amd64" => "lazycron"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.2/lazycron-linux-arm64"
      sha256 "9d4767f1290b39d9b8a25638b1bf893d5f38ae0382a856deea923103b33f2a08"

      def install
        bin.install "lazycron-linux-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.2/lazycron-linux-amd64"
      sha256 "1a08792785bce1aa8dda70c976722853b59674fdfa1ddca7f47b6082777168b3"

      def install
        bin.install "lazycron-linux-amd64" => "lazycron"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazycron --version 2>&1")
  end
end
