class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.3/supplyscan-darwin-arm64"
      sha256 "c88338031d8eadbb49a8ff04f4813caee83ef0d454ea5eef47f9ac247b2fa758"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.3/supplyscan-darwin-amd64"
      sha256 "d57e6a7432bfe15f8f2e17b82b56ff0cc1a5bdb8e9b7392ecdc8687d8488a8a2"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.3/supplyscan-linux-arm64"
      sha256 "eccce47b2943fabc316b7ea5a9c0800efefa0fafd83a46ddcaf9e5ac11662647"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.8.3/supplyscan-linux-amd64"
      sha256 "32a0442ae414f3c9345dcdac464da3baa4264694bc60d9afe6c2b122601fa728"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
