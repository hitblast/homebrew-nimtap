class Mcsrvstat < Formula
  desc "A hybrid and asynchronous Nim wrapper for the Minecraft Server Status API."
  homepage "https://github.com/hitblast/mcsrvstat.nim"
  url "https://github.com/hitblast/mcsrvstat.nim/archive/refs/tags/1.3.0.tar.gz"
  sha256 "afc0a512b3f08f568790401188a49a6a6ef60c8132d1f948db9a01231eb26751"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "release"
    bin.install "mcsrvstat"
  end
end