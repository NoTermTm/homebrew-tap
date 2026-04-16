class Pear < Formula
  desc "Small Rust static file server for frontend build output"
  homepage "https://github.com/NoTermTm/pear"
  version "0.0.3-beta"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.3-beta/pear-macos-aarch64.tar.gz"
      sha256 "6ca4c364a13cf3baa57c8dc60bbb54fb536c8cc5144edf14f3d6bdd40d67d65a"
    else
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.3-beta/pear-macos-x86_64.tar.gz"
      sha256 "314ee4249da3e96a827fa9a14381f5960931c71dc720eee1a1bc047f20d86c22"
    end
  end

  def install
    bin.install "pear"
  end
end
