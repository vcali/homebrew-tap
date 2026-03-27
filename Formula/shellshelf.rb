class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.1.0-build.11/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "4b1c268082e2fd556cd941dfdd149f016a961b453d064570bac308043fa0ad36"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.1.0-build.11/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "843382d78b9fe3d026b228aba7a10bfe80cb74364239d1b4791cce61387b875f"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.1.0-build.11/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3b6bcdeba865e2c44cd0e84ee9ef98a1a4bfbe992ac8ced72668e69f27b0c459"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
