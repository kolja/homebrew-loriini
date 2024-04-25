class Loriini < Formula
  desc "A commandline color picker"
  homepage "https://github.com/kolja/loriini"
  license "MIT"

  VERSION = "v0.1.5"

  SHA256_DARWIN_ARM = "4e195b2bec4abcb90b74d882aa3a0f6f370c0122895de6a83539f87f976836fe"
  SHA256_DARWIN_X86 = "68b125ec8603f37e6a9290553a147f6437423ea1ca62ca9d0458d05116301b41"
  SHA256_LINUX_X86 = "83a4da243dfa1bab20e22d304a5542385321c25183ddbdb353823c2b87115281"

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
