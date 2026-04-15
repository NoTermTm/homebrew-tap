class Pear < Formula
  desc "Small Rust static file server for frontend build output"
  homepage "https://github.com/NoTermTm/pear"
  version "0.0.2-test"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.2-test/pear-macos-aarch64.tar.gz"
      sha256 "29577a89a5925e489cffefbcae19cc58171c04d66a2445b53e505f4c55ff9ef3"
    else
      url "https://github.com/NoTermTm/pear/releases/download/v0.0.2-test/pear-macos-x86_64.tar.gz"
      sha256 "928ebaca2951bd4ab14cf29ad66a095c4ab383f684bcec9f5dfdf665295fa55a"
    end
  end

  def install
    bin.install "pear"
  end
end
