class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.2.1"

  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.1/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "80eecf84a03799c76c31d04d26e861f6535cebeb7e52e2334bb96980c7eee809"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.1/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "44a930230ce06e2e4538542b2a7049a06c227c7151934c2ffcd4fb4aaa9f10d9"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.2.1/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b0c95ed4e827aa5627fccdd591417cf25662a802d55da4c9cdbadfe7ad5646f7"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
