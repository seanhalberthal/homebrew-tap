class Lazycron < Formula
  desc "Terminal UI for managing cron jobs — locally and over SSH"
  homepage "https://github.com/seanhalberthal/lazycron"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.6/lazycron-darwin-arm64"
      sha256 "352bbd407d2eaf6d26b011d670f058542f221c207ca0442bb0644f2c54c7666a"

      def install
        bin.install "lazycron-darwin-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.6/lazycron-darwin-amd64"
      sha256 "e9195d43a23a64142b7c74c6f0fdd36086f1692687cbe7394ce0ac389930fd78"

      def install
        bin.install "lazycron-darwin-amd64" => "lazycron"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.6/lazycron-linux-arm64"
      sha256 "a7be16b5e4719013cc32f28400187fb3a20ab9782c64a2d5341fe11f49b0e417"

      def install
        bin.install "lazycron-linux-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.6/lazycron-linux-amd64"
      sha256 "4b3705573529f71dabdf5215831dbb36fc430f06f188bfa083251a83ce52af79"

      def install
        bin.install "lazycron-linux-amd64" => "lazycron"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazycron --version 2>&1")
  end
end
