class Keyva < Formula
  desc "Environment variables manager CLI - works with Keyva iOS/macOS app"
  homepage "https://github.com/seracreativo/keyva-cli"
  url "https://github.com/seracreativo/keyva-cli/releases/download/v1.3.0/keyva-1.3.0.tar.gz"
  sha256 "04ac145bcea880cba2b32b55cde37d2e538c19297a99a03735bc96d7d95ab8b9"
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
