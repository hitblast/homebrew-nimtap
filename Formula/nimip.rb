class Nimip < Formula
  desc "Asynchronously lookup IP addresses with this tiny, hybrid Nim application"
  homepage "https://github.com/hitblast/nimip"
  url "https://github.com/hitblast/nimip/archive/refs/tags/1.2.1.tar.gz"
  sha256 "d1b29c583274f5d8e52a683c9947b0554bcd5e831c960772ba466c9d2d2dab75"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "build", "-d:ssl", "-d:release", "--accept"
    bin.install "nimip"
  end
end