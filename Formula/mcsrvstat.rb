class Mcsrvstat < Formula
  desc "A hybrid and asynchronous Nim wrapper for the Minecraft Server Status API."
  homepage "https://github.com/hitblast/mcsrvstat.nim"
  url "https://github.com/hitblast/mcsrvstat.nim/archive/refs/tags/1.5.tar.gz"
  sha256 "09d3d3465329af71e47c70cab24e1794208abdb7b13c7150e1fd79992d2f5d63"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "build", "-d:ssl", "-d:release", "--accept"
    bin.install "mcsrvstat"
  end
end