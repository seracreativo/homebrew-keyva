class Keyva < Formula
  desc "Environment variables manager CLI - works with Keyva iOS/macOS app"
  homepage "https://github.com/seracreativo/keyva-cli"
  url "https://github.com/seracreativo/keyva-cli/releases/download/v1.0.0/keyva-1.0.0.tar.gz"
  sha256 "746fcf72a23b99f38de860a4276346049caad7499575786190389962851696b9"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :sonoma

  def install
    cd "KeyvaCore" do
      system "swift", "build", "-c", "release", "--disable-sandbox"
      bin.install ".build/release/keyva"
    end
  end

  test do
    system "#{bin}/keyva", "--help"
  end
end
