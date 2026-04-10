class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.1/supplyscan-darwin-arm64"
      sha256 "857cd13cb183c87b3f07b95bccaac293945e3a22b6b916367881cd18b39b3bc6"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.1/supplyscan-darwin-amd64"
      sha256 "51e1af802c29ca7804cb4bc4441456421c80f25cc0e9c0abdeee6cd09e32cd2d"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.1/supplyscan-linux-arm64"
      sha256 "5f277ff5955b04e003eeb0b1b849e61351116a43712e8397e58fdde8626b9d83"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.1/supplyscan-linux-amd64"
      sha256 "124c6bd37189d57649c37f08c13698653c6599ca5d3fb55bde1dd3c0949d7ea9"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
