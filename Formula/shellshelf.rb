class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.2.3"

  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.3/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "4534fc5325d830a8295b3b9520ab471085016336ffa3f0a13beb9544cf68545b"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.3/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "f98d7d52462ed7c2eba7681795d09a1cf7e7e93de93932fa30c96af2c70f1cd6"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.2.3/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1cb239f122fe1b1d2d7476bd14dd03d7940ddecc2e05e6966e396380d7ba12cc"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
