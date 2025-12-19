class Keyva < Formula
  desc "Environment variables manager CLI - works with Keyva iOS/macOS app"
  homepage "https://github.com/seracreativo/keyva-cli"
  version "1.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/seracreativo/keyva-cli/releases/download/v1.3.5/keyva-1.3.5-arm64.tar.gz"
      sha256 "3fcab6d913397336d2ffddedad6319c0a23022c5edb0cef6fc35f1c4399f7ddc"
    else
      # Intel Mac - will need to add this binary later
      url "https://github.com/seracreativo/keyva-cli/releases/download/v1.3.5/keyva-1.3.5-x86_64.tar.gz"
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
