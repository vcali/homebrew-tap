class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.2.5"

  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.5/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "72d40240564ac74dd6a8f041d7560ad353330466bb7799ce576756fb0c123b89"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.5/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "ea6a7e88edd057adc5b548e32e7b4efcb1e89a37f7892a7ee43062c89c4a512f"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.2.5/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1a2fea3522d47689461299c79b81556cd497b1ec4d2d6ee1040cc26ffa87a85e"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
