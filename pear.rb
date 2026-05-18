class Pear < Formula
  desc "Small Rust static file server for frontend build output"
  homepage "https://github.com/NoTermTm/pear"
  version "0.0.4-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.4-beta/pear-macos-aarch64.tar.gz"
      sha256 "7c1cc02c65701ef983869405f4fab7cd1a20f7f4d7481849f4538596990563da"
    else
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.4-beta/pear-macos-x86_64.tar.gz"
      sha256 "e9ce78f0dfacf1beed131e2d6e5383d3e5089ca71df3176213c8358a3b31e868"
    end
  end

  def install
    bin.install "pear"
  end
end
