class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.9.0/supplyscan-darwin-arm64"
      sha256 "c3199dd7c7e49098975c4cedca3c4bf5d29c7567f62cfdc45d01f42b92954afb"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.9.0/supplyscan-darwin-amd64"
      sha256 "78cad345e68ef8e4ea5557f145e6c1200feb1d5f0ad2358371875fb0f9e5d843"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.9.0/supplyscan-linux-arm64"
      sha256 "de9a8a122c57954e17fd2cec32c26d90e9de5a8e83b8008eb85b3f66fa0b7174"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.9.0/supplyscan-linux-amd64"
      sha256 "27f42fa199e8d81084c53cb87126b08fc2b746d1025e520d44724a644235e0f3"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
