class Abletondiscordrpc < Formula
  desc "Discord Rich Presence for Ableton Live"
  homepage "https://github.com/seanhalberthal/abletondiscordrpc"
  url "https://github.com/seanhalberthal/abletondiscordrpc/releases/download/v1.8.2/arpc"
  version "1.8.2"
  sha256 "d4e772b472ec8f676f1659168aa1f09c734d2d2eeae6c876a62b2c0019b839e9"
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
