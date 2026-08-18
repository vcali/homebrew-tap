class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.3.0"

  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.3.0/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "328eea1739428d4de05eb1a014d0f32eff83bbe52989820f6d50ccc1bcb7036c"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.3.0/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "c15f5e73bcefd5bcb072f6697534fe1125a173e1c33cbab6db2ae1176372d87e"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.3.0/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0a9a9646ad596993f06a771745a71dce3597606ad9209cd6431c89d8a02dce3b"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
