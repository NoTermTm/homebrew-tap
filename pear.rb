class Pear < Formula
  desc "Small Rust static file server for frontend build output"
  homepage "https://github.com/NoTermTm/pear"
  version "0.0.2-test"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.2-test/pear-macos-aarch64.tar.gz"
      sha256 "86ef9acc728d2a8dcba53ffcc31d004d6c464c0e6c7cef866e509ef4f1b43c7c"
    else
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.2-test/pear-macos-x86_64.tar.gz"
      sha256 "220d1ed79026925e7e0802fed2186bda02126d18b46aad064f58b838fb99c138"
    end
  end

  def install
    bin.install "pear"
  end
end
