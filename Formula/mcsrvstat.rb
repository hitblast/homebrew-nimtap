class Mcsrvstat < Formula
  desc "A hybrid and asynchronous Nim wrapper for the Minecraft Server Status API."
  homepage "https://github.com/hitblast/mcsrvstat.nim"
  url "https://github.com/hitblast/mcsrvstat.nim/archive/refs/tags/1.1.0.tar.gz"
  sha256 "191959bee40a83d62d89c4d4f684343f5726b613a2bcf6e31ecfc4fcec13e294"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "release"
    bin.install "mcsrvstat"
  end
end