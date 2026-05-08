class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.2.9"

  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.9/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "906e7965a56f3ccd2a9c6245924215f328a7ec8ba9b1de45ce5d55b32e3720c7"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.9/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "ed5ced3b62f1e9439e58c2d8004ce980fe066d55ac8178083d552951bf4585a8"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.2.9/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "655bb289aaefccdd296f28591de63cc43d11bfe79de45c886100b9dca8dd05f1"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
