class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.2/supplyscan-darwin-arm64"
      sha256 "0786e8ecc1a3f91e48cc7d651d2d9ed894c714c98885f502fb5e02fc54354c7b"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.2/supplyscan-darwin-amd64"
      sha256 "74e392f2f296b78b68c2c81c11a5cb44aa2f4361affa69a9fbc42c62bf997b4c"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.2/supplyscan-linux-arm64"
      sha256 "c054a8164d3ce411c4e11bb8d5e7c29b41145f241aacc096178ba911e50578c3"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.2/supplyscan-linux-amd64"
      sha256 "5888a3b78b8b171c1171929ace55a7a0d14f0e6a83e57f479e21e5fe0c8f5df7"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
