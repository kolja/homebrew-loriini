class Loriini < Formula
  desc "A commandline color picker"
  homepage "https://github.com/kolja/loriini"
  license "MIT"

  VERSION = "v0.1.7"

  SHA256_DARWIN_ARM = "1cdc006984686dbc3abd6444a95e1f0bce0204660b663546f8f5fb3acde5d367"
  SHA256_DARWIN_X86 = "1273b96371936cd2cba99e49e6e9ab0edc2e62d4b6f285dc43d932b914e18a8b"
  SHA256_LINUX_X86  = "3e4261aa2fba161a53a74774e0d0a5521722e0759da55b18fdfa23ba09348cd0"

  BASE_URL = "https://github.com/kolja/loriini/releases/download"

  version VERSION

  if OS.mac?
    if RbConfig::CONFIG['host_cpu'].include? "x86_64"
      # INTEL
      url "#{BASE_URL}/#{VERSION}/loriini-x86_64-apple-darwin.tar.gz"
      sha256 SHA256_DARWIN_X86
    else
      # APPLE SILICON
      url "#{BASE_URL}/#{VERSION}/loriini-aarch64-apple-darwin.tar.gz"
      sha256 SHA256_DARWIN_ARM
    end
  elsif OS.linux?
      url "#{BASE_URL}/#{VERSION}/loriini-x86_64-unknown-linux-musl.tar.gz"
      sha256 SHA256_LINUX_X86
  end

  def install
    bin.install "loriini"
  end

  test do
    system "#{bin}/loriini", "--version"
  end
end
