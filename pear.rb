class Pear < Formula
  desc "Small Rust static file server for frontend build output"
  homepage "https://github.com/NoTermTm/pear"
  version "0.0.6-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.6-beta/pear-macos-aarch64.tar.gz"
      sha256 "1d58284ca87ca692ae790f6f21fea95b2bb824402dbace62a277d5322f52707f"
    else
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.6-beta/pear-macos-x86_64.tar.gz"
      sha256 "4d59ad64411dffdcd68761efeecf8526afd49f3ee292276c9f95bde00f187db9"
    end
  end

  def install
    bin.install "pear"
  end
end
