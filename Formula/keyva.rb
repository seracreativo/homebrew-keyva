class Keyva < Formula
  desc "Environment variables manager CLI - works with Keyva iOS/macOS app"
  homepage "https://github.com/seracreativo/keyva-cli"
  url "https://github.com/seracreativo/keyva-cli/releases/download/v1.3.3/keyva-1.3.3.tar.gz"
  sha256 "4ba7e7738dfd230aa06462a8c9545c30adedbbad760f684124791d7f23c41c0b"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :sonoma

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/keyva"
  end

  test do
    system "#{bin}/keyva", "--help"
  end
end
