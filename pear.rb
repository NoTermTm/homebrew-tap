class Pear < Formula
  desc "Small Rust static file server for frontend build output"
  homepage "https://github.com/NoTermTm/pear"
  version "0.0.4-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.4-beta/pear-macos-aarch64.tar.gz"
      sha256 "c58c061a4c34b6334d05d70b0e31ca5f8e8528250d993f9a7fb7d00b8a2681a3"
    else
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.4-beta/pear-macos-x86_64.tar.gz"
      sha256 "c3edaa1029f2553faa9bdee49d0fa69f8636684ec2e28c4071922886b3bebb9e"
    end
  end

  def install
    bin.install "pear"
  end
end
