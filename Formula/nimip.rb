class Nimip < Formula
  desc "Asynchronously lookup IP addresses with this tiny, hybrid Nim application"
  homepage "https://github.com/hitblast/nimip"
  url "https://github.com/hitblast/nimip/archive/refs/tags/1.0.0.tar.gz"
  sha256 "e3e01e86f8820c2a776fe40a48989301985ea045cf836df1dabd3b02bc221ff0"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "release"
    bin.install "nimip"
  end
end