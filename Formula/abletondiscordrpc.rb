class Abletondiscordrpc < Formula
  desc "Discord Rich Presence for Ableton Live"
  homepage "https://github.com/seanhalberthal/abletondiscordrpc"
  url "https://github.com/seanhalberthal/abletondiscordrpc/releases/download/v1.8.0/arpc"
  version "1.8.0"
  sha256 "e9818d50b0e1e0f3abe9b46cb395369a686dcb6b7c68a0e884f81d6ebb3a2209"
  license "MIT"

  def install
    bin.install "arpc"
  end

  def caveats
    <<~EOS
      To run arpc in the background:
        brew services start abletondiscordrpc

      Or run manually:
        arpc
    EOS
  end

  service do
    run opt_bin/"arpc"
    keep_alive true
    log_path var/"log/abletondiscordrpc.log"
    error_log_path var/"log/abletondiscordrpc.log"
  end

  test do
    assert_predicate bin/"arpc", :exist?
    assert_predicate bin/"arpc", :executable?
  end
end
