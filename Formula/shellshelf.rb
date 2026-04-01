class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.2.2"

  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.2/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "92a93936feeab0b7a9c1cf638b0669c4963259aa64e6c65c594d9cccf7ecdc5a"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.2/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "e130a7b9a55199bee73f514affa13f7acaa9ff394aa630312b6d8d87ebcb3be8"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.2.2/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cb4354688747f3f3367ce78fc1ca0bb6110ecf1792b7a21051f0c5abac33954d"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
