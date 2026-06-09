class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.13.0/supplyscan-darwin-arm64"
      sha256 "de4bec390f19d48eaaf6ba7245a37d1ace63c1544b89c9368d3be0ad19a9741c"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.13.0/supplyscan-darwin-amd64"
      sha256 "0ab7afeebd3192836e01dba9845e6ea821f0625dbd74ebc2c589e7d0ad261bcf"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.13.0/supplyscan-linux-arm64"
      sha256 "42d91bf032c43b135ed2a4ac4931487fd26beb7212030ef85ac3cf50d0b43475"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.13.0/supplyscan-linux-amd64"
      sha256 "69a4f8b9f784e2a30d95a6dbd8c803c5275414e587b3a6c753db763031e5dab7"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
