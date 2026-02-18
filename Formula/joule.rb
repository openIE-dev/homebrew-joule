class Joule < Formula
  desc "The Joule programming language compiler - energy-aware systems programming"
  homepage "https://joule-lang.org"
  license "Apache-2.0"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-macos-arm64.tar.gz"
      sha256 "305eaeecddf8ed8469d3afbdfd70170df9582409d205526009fd4e1027d670bc"
    else
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-macos-x86_64.tar.gz"
      sha256 "fa031a8858fe28014442dcfa0c100c59385b544c2e7b182ca466c5eeaa5367d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-ubuntu-arm64.tar.gz"
      sha256 "94f0cfe07aa5e27e03204dea8da7d67ffbec208597684ac7bcf028e71c08a555"
    else
      url "https://github.com/openIE-dev/joule-lang/releases/download/v#{version}/joule-ubuntu-x86_64.tar.gz"
      sha256 "9530524e765f61d824d0c9763c214d90dd9db57ee0ac8776f8b64b40017b35f2"
    end
  end

  def install
    bin.install "bin/joulec"
  end

  test do
    assert_match "joulec", shell_output("#{bin}/joulec --version")
  end
end
