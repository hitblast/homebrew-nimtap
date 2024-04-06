class Mcsrvstat < Formula
  desc "A hybrid and asynchronous Nim wrapper for the Minecraft Server Status API."
  homepage "https://github.com/hitblast/mcsrvstat.nim"
  url "https://github.com/hitblast/mcsrvstat.nim/archive/refs/tags/1.4.0.tar.gz"
  sha256 "d92427954ca01b6851d7e0d0bed3981ffbb01c2bd7db1706fe53ca2438a4eb3e"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "build", "-d:ssl", "-d:release", "--accept"
    bin.install "mcsrvstat"
  end
end