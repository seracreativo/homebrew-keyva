class Keyva < Formula
  desc "Environment variables manager CLI - works with Keyva iOS/macOS app"
  homepage "https://github.com/seracreativo/keyva-cli"
  version "1.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seracreativo/keyva-cli/releases/download/v1.3.6/keyva-1.3.6-arm64.tar.gz"
      sha256 "5a0aa1795d36b1cb8f2066c54b02616a68fae7b7c39064c47c8125706f11777c"
    else
      # Intel Mac - will need to add this binary later
      url "https://github.com/seracreativo/keyva-cli/releases/download/v1.3.6/keyva-1.3.6-x86_64.tar.gz"
      sha256 "PLACEHOLDER_X86_SHA256"
    end
  end

  def install
    bin.install "keyva"
  end

  test do
    system "#{bin}/keyva", "--help"
  end
end
