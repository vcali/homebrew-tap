class Shellshelf < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/shellshelf"
  version "0.2.4"

  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.4/shellshelf-aarch64-apple-darwin.tar.gz"
      sha256 "ccf57ac0c53085b764ece74084e287df8a5be6aef2e6de8de94322807c192171"
    else
      url "https://github.com/vcali/shellshelf/releases/download/v0.2.4/shellshelf-x86_64-apple-darwin.tar.gz"
      sha256 "4114dee5e59145a9daed05e40b067b7fa8502dbc9033ccae43e2c28b13d669e5"
    end
  elsif OS.linux?
    url "https://github.com/vcali/shellshelf/releases/download/v0.2.4/shellshelf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4cb8a8a0095611585f371e936b9dd9d8306f030ff88328b566cba70f4a889fdd"
  end

  def install
    bin.install "shellshelf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shellshelf --version")
  end
end
