class Loriini < Formula
  desc "A commandline color picker"
  homepage "https://github.com/kolja/loriini"
  url "https://github.com/kolja/loriini/releases/download/v0.1.2/loriini-x86_64-apple-darwin.tar.gz"
  sha256 "9d57b73857cfb7f4e7af0af9754ba6e90e7dfdddca68a8e0a2a836fc1c2d16aa"
  license "MIT"

  def install
    bin.install "loriini"
  end

  test do
    system "#{bin}/loriini", "--version"
  end
end
