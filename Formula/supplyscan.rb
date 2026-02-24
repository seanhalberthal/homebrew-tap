class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v#{version}/supplyscan-darwin-arm64"
      sha256 "PLACEHOLDER_DARWIN_ARM64"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v#{version}/supplyscan-darwin-amd64"
      sha256 "PLACEHOLDER_DARWIN_AMD64"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v#{version}/supplyscan-linux-arm64"
      sha256 "PLACEHOLDER_LINUX_ARM64"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v#{version}/supplyscan-linux-amd64"
      sha256 "PLACEHOLDER_LINUX_AMD64"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
