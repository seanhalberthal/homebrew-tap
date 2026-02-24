class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.1/supplyscan-darwin-arm64"
      sha256 "965cdf2651102d29680481149d17423f6386339c91eb97b3fee72d68f473dc00"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.1/supplyscan-darwin-amd64"
      sha256 "748ccee7b46ee6317ff576546be924e39cc99980b506bbaf27338d6322917a65"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.1/supplyscan-linux-arm64"
      sha256 "ac02ed6c256f006f9cc84465aff1b2a39bc23938789ac2eb37ea620f68397153"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.1/supplyscan-linux-amd64"
      sha256 "13a8a325cb04fb453d82b4407ee8966ce207367c60a63d066325da75a0932e86"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
