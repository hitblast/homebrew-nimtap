class Mcsrvstat < Formula
  desc "A hybrid and asynchronous Nim wrapper for the Minecraft Server Status API."
  homepage "https://github.com/hitblast/mcsrvstat.nim"
  url "https://github.com/hitblast/mcsrvstat.nim/archive/refs/tags/1.3.1.tar.gz"
  sha256 "e9680f9dbf140a07f90d2f7b1c97c03bba4addc648bcd66c1b7677ab14213fce"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "build", "-d:ssl", "-d:release", "--accept"
    bin.install "mcsrvstat"
  end
end