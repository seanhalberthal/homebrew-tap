class Lazycron < Formula
  desc "Terminal UI for managing cron jobs — locally and over SSH"
  homepage "https://github.com/seanhalberthal/lazycron"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.4/lazycron-darwin-arm64"
      sha256 "1d286adda38a04c518afa718d601682203c7008602ed8e0bf191b3d18a8ad6e4"

      def install
        bin.install "lazycron-darwin-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.4/lazycron-darwin-amd64"
      sha256 "2e44fcfb09e8e6f229e0c58f0f090b6a812eab4207341aa0f7b2413805256a5f"

      def install
        bin.install "lazycron-darwin-amd64" => "lazycron"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.4/lazycron-linux-arm64"
      sha256 "f19a49987c0e99ae75d3b233f49b80c52d913a06e117c29ff86bae6ac25e2717"

      def install
        bin.install "lazycron-linux-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.4/lazycron-linux-amd64"
      sha256 "b21db6ddc0ef162021a5ac452fb9d83b03ad15278cc1bd813f7e4dbe9f7a1a15"

      def install
        bin.install "lazycron-linux-amd64" => "lazycron"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazycron --version 2>&1")
  end
end
