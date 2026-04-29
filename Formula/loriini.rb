class Loriini < Formula
  desc "Console color picker"
  homepage "https://github.com/kolja/loriini"
  license "MIT"

  VERSION  = "0.1.8"
  BASE_URL = "https://github.com/kolja/loriini/releases/download"

  SHA256_DARWIN_ARM = "ec7c37bed134cc15b825ce159d74cd2e9914a506c49a70415a532a123598b173"
  SHA256_DARWIN_X86 = "760648d8873ca80212757f6807782b09c61e3bf9f911422f8a32ff0a9505da30"
  SHA256_LINUX_X86  = "0fc185db6d148b6e04c56c17a4183538e3d0053a8a0cdf933cd996de01293365"

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
