class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.0/supplyscan-darwin-arm64"
      sha256 "88b99e751181e56e4ac52b54ff7cebc416140d1b32a5125fe3d60c13d6530b7f"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.0/supplyscan-darwin-amd64"
      sha256 "506e4ad96c472a73616033876f533015bbcac59786acb33e4c767abcd16d2c86"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.0/supplyscan-linux-arm64"
      sha256 "52980f215bb0281683a07a32ec5555c6765d1c4339908eb68d21db0591c4050f"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.0/supplyscan-linux-amd64"
      sha256 "4123824c428c4d945fb41ba65b42f40fffb8657830bf48ae9245b6a0cc91781c"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
