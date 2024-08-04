class Nimip < Formula
  desc "Asynchronously lookup IP addresses with this tiny, hybrid Nim application"
  homepage "https://github.com/hitblast/nimip"
  url "https://github.com/hitblast/nimip/archive/refs/tags/1.3.tar.gz"
  sha256 "293f4e4106d2407efb1ed764c6f337282d5911052e1db6db766114562d3ff5e0"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "build", "-d:ssl", "-d:release", "--accept"
    bin.install "nimip"
  end
end