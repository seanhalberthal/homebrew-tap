class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.14.0/supplyscan-darwin-arm64"
      sha256 "1c77d79ddbcd086a85ad4bebe7cb13c1bcf09ca0bed6e0a533ecad841a783559"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.14.0/supplyscan-darwin-amd64"
      sha256 "e6d3652d6fa9051a950287e29b34a7f16e3ad055902bef0dc1dff52f5029d847"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.14.0/supplyscan-linux-arm64"
      sha256 "ec7dc22ac498fdc5e4c417fe7413c4b8e2fd67d898ddcb808fea7a9429233094"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.14.0/supplyscan-linux-amd64"
      sha256 "3a1207eed7c7c1501f9899f64a9f5bb22aedeb51799b4cd52efb4d51f7e855c8"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
