class Keyva < Formula
  desc "Environment variables manager CLI - works with Keyva iOS/macOS app"
  homepage "https://github.com/seracreativo/keyva-cli"
  url "https://github.com/seracreativo/keyva-cli/releases/download/v1.2.0/keyva-1.2.0.tar.gz"
  sha256 "83b397a2e7a5944c414370559f9d1d4047fe3b4f43656dc064207ddc98224aaa"
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
