class Combib < Formula
  desc "CLI for storing, searching, and sharing reusable shell commands"
  homepage "https://github.com/vcali/combib"
  version "0.1.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vcali/combib/releases/download/v0.1.0-build.5/combib-aarch64-apple-darwin.tar.gz"
      sha256 "614c56988d268f3af4a9d9935468ad3a13e829c176eea17a2de9397b703d649d"
    else
      url "https://github.com/vcali/combib/releases/download/v0.1.0-build.5/combib-x86_64-apple-darwin.tar.gz"
      sha256 "28ba7f002c8bb1d244e9b9bf717797f1cdfe0235320514b2f28b7309e6568d82"
    end
  elsif OS.linux?
    url "https://github.com/vcali/combib/releases/download/v0.1.0-build.5/combib-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4bf077aeb6ed7e531bf3305d637e22b2b16aff3bf1c10866509d19daccc3e891"
  end

  def install
    bin.install "combib"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/combib --version")
  end
end
