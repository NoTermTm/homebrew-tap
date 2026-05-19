class Pear < Formula
  desc "Small Rust static file server for frontend build output"
  homepage "https://github.com/NoTermTm/pear"
  version "0.0.5-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.5-beta/pear-macos-aarch64.tar.gz"
      sha256 "6ebe3ea810104bfb4018d81a3bdc9fed788dd096e99891c3cef476ff0e5f44ef"
    else
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.5-beta/pear-macos-x86_64.tar.gz"
      sha256 "23c942df34f6aaab452bf507df59fb75a802dac600a62de3e741c627640bcb7b"
    end
  end

  def install
    bin.install "pear"
  end
end
