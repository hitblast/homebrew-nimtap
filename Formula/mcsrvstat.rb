class Mcsrvstat < Formula
  desc "A hybrid and asynchronous Nim wrapper for the Minecraft Server Status API."
  homepage "https://github.com/hitblast/mcsrvstat.nim"
  url "https://github.com/hitblast/mcsrvstat.nim/archive/refs/tags/1.4.1.tar.gz"
  sha256 "22ac2fcd32ab8d1c2e4d05db672fdec5774d2ec2fa16d74601d8c0b9a23eb38a"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "build", "-d:ssl", "-d:release", "--accept"
    bin.install "mcsrvstat"
  end
end