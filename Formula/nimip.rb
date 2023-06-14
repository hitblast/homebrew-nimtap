class Nimip < Formula
  desc "Asynchronously lookup IP addresses with this tiny, hybrid Nim application"
  homepage "https://github.com/hitblast/nimip"
  url "https://github.com/hitblast/nimip/archive/refs/tags/1.1.0.tar.gz"
  sha256 "e71b00111d9aff5fc3201b4c3a2d875b64bb30ff9dc695130a1e65ab49698ff4"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "release"
    bin.install "nimip"
  end
end