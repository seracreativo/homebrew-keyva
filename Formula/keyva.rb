class Keyva < Formula
  desc "Environment variables manager CLI - works with Keyva iOS/macOS app"
  homepage "https://github.com/seracreativo/keyva-cli"
  url "https://github.com/seracreativo/keyva-cli/releases/download/v1.3.1/keyva-1.3.1.tar.gz"
  sha256 "2ff8565d4c95fdf618cf4c02a1fb844c195162060a6a68e425b78b01e3f85a56"
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
