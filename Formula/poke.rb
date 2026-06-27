class Poke < Formula
  desc "Terminal-native pokes for a small dev team, surfaced in tmux"
  homepage "https://github.com/undont/poke"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.3.0/poke_darwin_arm64.tar.gz"
      sha256 "78d182a88fb5f870d6cd99c161e278bcae687405323f019ef80869fbdbc8b9cf"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.3.0/poke_darwin_amd64.tar.gz"
      sha256 "f8c63535ba1f1d8893e6a02d8b3fcff77f184d91279133cfda6364949c9e82e8"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/undont/poke/releases/download/v0.3.0/poke_linux_arm64.tar.gz"
      sha256 "f4bd18fb02cb2344137245b761b4f023ec9adde392b7fc948cc4fe338a5c247c"

      def install
        bin.install "poke", "poked"
      end
    end

    on_intel do
      url "https://github.com/undont/poke/releases/download/v0.3.0/poke_linux_amd64.tar.gz"
      sha256 "33d5b73644f600c5b328f08ebcdf5876fd21de3b2b8b6f783edef7b2c7c092e6"

      def install
        bin.install "poke", "poked"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/poked --version 2>&1")
  end
end
