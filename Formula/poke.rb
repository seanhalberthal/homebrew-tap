class Poke < Formula
  desc "Terminal-native pokes for a small dev team, surfaced in tmux"
  homepage "https://github.com/undont/poke"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.2.0/poke_darwin_arm64.tar.gz"
      sha256 "6a39155a4e6beb02afe823f63d8fb675c2c47a9fb57be408c2d2ba5a685eb195"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.2.0/poke_darwin_amd64.tar.gz"
      sha256 "b29a1889f31e3156f352177d4d19e214da3072cb2cec274bedbb70a403f36ff4"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.2.0/poke_linux_arm64.tar.gz"
      sha256 "0277d35d363cdceee471e921f4809922ac80c304085e6d3c2a62eed330c04373"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.2.0/poke_linux_amd64.tar.gz"
      sha256 "688b0cd732407a592c9349ddb608b516d2ef1547de2896eb590f63f65cf595a6"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poked --version 2>&1")
  end
end
