class Loriini < Formula
  desc "Console color picker"
  homepage "https://github.com/kolja/loriini"
  license "MIT"

  VERSION  = "0.1.8"
  BASE_URL = "https://github.com/kolja/loriini/releases/download"

  SHA256_DARWIN_ARM = "090d055eded875adee48838c6aa8c104216140bddb9e78e2df494be99163d76c"
  SHA256_DARWIN_X86 = "f80523027d111be25ace6399563705ed5e00a6d7953c2c761c0fe9c53b67c7fd"
  SHA256_LINUX_X86  = "44e9b288b11f0414573d7957e89c1c5e6352c0a47a031040356c3c0225d9fcd2"

  version VERSION

  on_macos do
    on_arm do
      url "#{BASE_URL}/v#{VERSION}/loriini-aarch64-apple-darwin.tar.gz"
      sha256 SHA256_DARWIN_ARM
    end
    on_intel do
      url "#{BASE_URL}/v#{VERSION}/loriini-x86_64-apple-darwin.tar.gz"
      sha256 SHA256_DARWIN_X86
    end
  end

  on_linux do
    on_intel do
      url "#{BASE_URL}/v#{VERSION}/loriini-x86_64-unknown-linux-musl.tar.gz"
      sha256 SHA256_LINUX_X86
    end
  end

  def install
    bin.install "loriini"
  end

  test do
    assert_match "loriini", shell_output("#{bin}/loriini --version")
  end
end
