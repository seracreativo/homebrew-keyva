class Keyva < Formula
  desc "Environment variables manager CLI - works with Keyva iOS/macOS app"
  homepage "https://github.com/seracreativo/keyva-cli"
  url "https://github.com/seracreativo/keyva-cli/releases/download/v1.0.0/keyva-1.0.0.tar.gz"
  sha256 "4187d44abd5dc242261b3ab163e32daacbc4be1fa24481563d3ef60ebed00a28"
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
