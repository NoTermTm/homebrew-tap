class Pear < Formula
  desc "Small Rust static file server for frontend build output"
  homepage "https://github.com/NoTermTm/pear"
  version "0.0.2-test"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.2-test/pear-macos-aarch64.tar.gz"
      sha256 "e7f124e03c231a1e33fe9e9cddb89f8d83cc9ed25c60629f2ff7ccfa5123cfa6"
    else
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.2-test/pear-macos-x86_64.tar.gz"
      sha256 "23e1e2597cff66d9086c25ea9aa7e21edad42d95d18e1bad846b97bba44568de"
    end
  end

  def install
    bin.install "pear"
  end
end
