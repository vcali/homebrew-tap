class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.2.7"

  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.7/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "e3ee2b94310acb53e69775b3929fe57f05a88c4fc0841837bdcbf12e7302f535"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.7/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "f2cf00fc40b69b20aef4bf4b6b154c6b20746299c70f1fb95f1ef4298dc2e879"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.2.7/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "58906a0518ec80d26c870415dfa1a581cac5cae98a4a8b78234c83b4d56a7387"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
