class Pear < Formula
  desc "Small Rust static file server for frontend build output"
  homepage "https://github.com/NoTermTm/pear"
  version "0.0.2-test"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.2-test/pear-macos-aarch64.tar.gz"
      sha256 "2db918370ea84998d6e0cc95f85f0c9c13d867218e8f71da0386ba5fa7aa1f49"
    else
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.2-test/pear-macos-x86_64.tar.gz"
      sha256 "0bdcd0a89597f0f408d0a08a2b6b7b717be7aead904c52ed2aab19c557a2d149"
    end
  end

  def install
    bin.install "pear"
  end
end
