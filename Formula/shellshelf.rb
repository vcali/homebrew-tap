class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.2.6"

  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.6/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "74fbf805598e79947ea9023b99e33d4eeca93e83f799867efdba5faa16f1a1d8"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.6/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "2f7a70daec6f4e19011ba42056d5748f52b47a9a61f85b3245c16322f3d03e95"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.2.6/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6de12b5b67e1f34d0a5bb84e09542aa4223ce1cc36ce750b20fd4b4bc99feb43"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
