class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.2.8"

  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.8/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "f7dd2d541b82799df7b65b41af37e6fd232a55622e695791a65ac7d1cca443c8"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.8/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "0447354943005f5fbfc667e6b9f3c49238a68b8e9a5a39db631a1b762e6ff525"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.2.8/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "414fa77c77a6b071afcec6e6f1cdc33f9f7b4196b9fc65de6ffae2a3a99f85c6"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
