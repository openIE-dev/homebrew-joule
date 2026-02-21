class Joule < Formula
  desc "The Joule programming language compiler - energy-aware systems programming"
  homepage "https://joule-lang.org"
  license "Apache-2.0"
  version "1.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-macos-arm64.tar.gz"
      sha256 "369009d1b4b14b1fc35e4d3d86d8a206b89dcb0b183f2347a1c60259f90c343e"
    else
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-macos-x86_64.tar.gz"
      sha256 "7cd314ca48cdd50bb6d23f61480f6ecfad641a8317afbc5aff869edd6f0e5174"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-ubuntu-arm64.tar.gz"
      sha256 "a74296c53796335a5b96fbb092b8007c9b29bf6d240ed54912428c50a2047565"
    else
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-ubuntu-x86_64.tar.gz"
      sha256 "10700aa43cabd9c444cf403fa476da9613ce35b8eb747a90b6000aab32ca05a2"
    end
  end

  def install
    bin.install "bin/joule"
    bin.install "bin/joulec"
    bin.install "bin/amp"
    bin.install "bin/joule-lsp"
    bin.install "bin/joule-debug"
    bin.install "bin/joule-fmt"
    bin.install "bin/joule-audit"
    bin.install "bin/joule-doc"
  end

  test do
    assert_match "joulec", shell_output("#{bin}/joulec --version")
    assert_match "joule", shell_output("#{bin}/joule --version")
  end
end
