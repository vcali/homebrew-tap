class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.1.0-build.11/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "9bfe50d9963ea36d1e2677b5d90abafd9becf77928b85cb2f568f2f7c1d8a7a5"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.1.0-build.11/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "989996bd5692676809fa9f0fdfad6fa7bfca717fac2f8747873bfffc1003059c"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.1.0-build.11/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "57bec036feb4cba4fcfa8b408b05dced071240a02ce480ac178d82066066dd4a"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
