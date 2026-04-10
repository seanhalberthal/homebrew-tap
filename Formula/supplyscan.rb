class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.0/supplyscan-darwin-arm64"
      sha256 "cb4b789b4d9060ba5ca1e71e82d68b23b8f5424dbc847ffadf61bb289df701a1"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.0/supplyscan-darwin-amd64"
      sha256 "08460a99a3fa0c063528f19069b31429f5e8f50a836eb7b86e2fc6bbd3317722"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.0/supplyscan-linux-arm64"
      sha256 "65f60f95694596030fcc9ec957205e2c6e1a5377657bb527b007753fcb03b580"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.10.0/supplyscan-linux-amd64"
      sha256 "ead316a42fb0d00ccc33cad68a3365760bf3a9bc9e7486d7c26b87a7ebcac775"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
