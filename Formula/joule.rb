class Joule < Formula
  desc "The Joule programming language compiler - energy-aware systems programming"
  homepage "https://joule-lang.org"
  license "MIT"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_MACOS_ARM64"
    else
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_MACOS_X86_64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-ubuntu-arm64.tar.gz"
      sha256 "PLACEHOLDER_UBUNTU_ARM64"
    else
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-ubuntu-x86_64.tar.gz"
      sha256 "PLACEHOLDER_UBUNTU_X86_64"
    end
  end

  def install
    bin.install "bin/joulec"
  end

  test do
    assert_match "joulec", shell_output("#{bin}/joulec --version")
  end
end
