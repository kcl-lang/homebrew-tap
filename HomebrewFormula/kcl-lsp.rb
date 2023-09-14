class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.6.0"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.6.0/kclvm-v0.6.0-darwin-arm64.tar.gz"
      sha256 "fad462893de3971358ab4e912fab0cc90ee62fcfeded93c6ab83f2373e5fdc97"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.6.0/kclvm-v0.6.0-darwin-amd64.tar.gz"
      sha256 "5d04780f116eed74b7547572dd1417852837d2e90a01ed510504b601b8bfd73a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.6.0/kclvm-v0.6.0-linux-amd64.tar.gz"
      sha256 "06bb63f5960a510f7dc34656ba22666bae1626c9b2f23c9a5061d59a8953db83"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
