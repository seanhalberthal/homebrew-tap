class Supplyscan < Formula
  desc "Security scanner for JavaScript lockfiles — detects supply chain compromises and vulnerabilities"
  homepage "https://github.com/seanhalberthal/supplyscan"
  version "1.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.9.1/supplyscan-darwin-arm64"
      sha256 "8ea63ff0638bb494df55a312ce818f134e07ca26e589a02b6abac5d7450f87b7"

      def install
        bin.install "supplyscan-darwin-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.9.1/supplyscan-darwin-amd64"
      sha256 "40896ffe35d5aaae220d4d73b7eb4136541dfac8c1f0c99cd7aa546f2edbbed7"

      def install
        bin.install "supplyscan-darwin-amd64" => "supplyscan"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.9.1/supplyscan-linux-arm64"
      sha256 "162113db86ec7aafda48115f4bd35247fcf7ad5b3c4627445cc3f6255fae3e9b"

      def install
        bin.install "supplyscan-linux-arm64" => "supplyscan"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/supplyscan/releases/download/v1.9.1/supplyscan-linux-amd64"
      sha256 "18a166866b72ac7bb7ab00bfe1c9a1b1821a5f70a25a167a0c83d82476fcca93"

      def install
        bin.install "supplyscan-linux-amd64" => "supplyscan"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supplyscan status 2>&1", 0)
  end
end
