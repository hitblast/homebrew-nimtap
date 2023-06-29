class Nimip < Formula
  desc "Asynchronously lookup IP addresses with this tiny, hybrid Nim application"
  homepage "https://github.com/hitblast/nimip"
  url "https://github.com/hitblast/nimip/archive/refs/tags/1.2.0.tar.gz"
  sha256 "4124e99f7837f10c34e931573cfc20a36bec55263cd37b000920f8eaebe14f5e"
  license "MIT"

  depends_on "openssl"
  depends_on "nim" => :build

  def install
    system "nimble", "release"
    bin.install "nimip"
  end
end