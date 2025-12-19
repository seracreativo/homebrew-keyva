class Keyva < Formula
  desc "Environment variables manager CLI - works with Keyva iOS/macOS app"
  homepage "https://github.com/seracreativo/keyva-cli"
  version "1.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seracreativo/keyva-cli/releases/download/v1.3.7/keyva-1.3.7-arm64.tar.gz"
      sha256 "b0e6400b42f95183770b1d1ef01adf18bfd0b1e411275a5123f1a0572847e07a"
    else
      # Intel Mac - will need to add this binary later
      url "https://github.com/seracreativo/keyva-cli/releases/download/v1.3.7/keyva-1.3.7-x86_64.tar.gz"
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
