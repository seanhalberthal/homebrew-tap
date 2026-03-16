class Lazycron < Formula
  desc "Terminal UI for managing cron jobs — locally and over SSH"
  homepage "https://github.com/seanhalberthal/lazycron"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.5/lazycron-darwin-arm64"
      sha256 "ed7ca9a7e58772a188d4b3e29da3449b9455aec572d7ac334d57ea82a4f1240c"

      def install
        bin.install "lazycron-darwin-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.5/lazycron-darwin-amd64"
      sha256 "d8a6f68ffc75beb5717af3aff1ff3ca55c23be1614de2643aff1fca0718b095e"

      def install
        bin.install "lazycron-darwin-amd64" => "lazycron"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.5/lazycron-linux-arm64"
      sha256 "e394e478277a14c0e9232e74277c11e2ff67e26c9321bc018948124bddad6995"

      def install
        bin.install "lazycron-linux-arm64" => "lazycron"
      end
    end

    on_intel do
      url "https://github.com/seanhalberthal/lazycron/releases/download/v0.2.5/lazycron-linux-amd64"
      sha256 "cf9021e3896d4a2362030cb00771a52bd97d6c546976071ae324a971d0653003"

      def install
        bin.install "lazycron-linux-amd64" => "lazycron"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazycron --version 2>&1")
  end
end
