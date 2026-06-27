class Poke < Formula
  desc "Terminal-native pokes for a small dev team, surfaced in tmux"
  homepage "https://github.com/undont/poke"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.4.0/poke_darwin_arm64.tar.gz"
      sha256 "917dafd68ce924ccee37163012d2f7e1ff3013e7b0bfc9d5c7a1435bf3ea6bf9"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.4.0/poke_darwin_amd64.tar.gz"
      sha256 "fa41d561a3deb15305adbbc956eb543cb61f78f3c48730284fa9d25db68b7248"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.4.0/poke_linux_arm64.tar.gz"
      sha256 "41134bb0b31269470984b852a98a43f127f0b77263abf09c01694ce91b9ed1c1"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.4.0/poke_linux_amd64.tar.gz"
      sha256 "93f54f24acaf4375f7c6c8e4c0b7e96ae8f0c66158de33ae72ceb0611839800c"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poked --version 2>&1")
  end
end
