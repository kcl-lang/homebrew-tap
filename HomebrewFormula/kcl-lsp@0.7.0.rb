class KclLspAt070 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.7.0-alpha.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0-alpha.1/kclvm-v0.7.0-alpha.1-darwin-arm64.tar.gz"
      sha256 "10a1a6fec02b15767f2ada7d2e4e4799377771a698a3b151a4cc21b5d5e2c834"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0-alpha.1/kclvm-v0.7.0-alpha.1-darwin-amd64.tar.gz"
      sha256 "46c9342dff4fe62215241a4ee4192e00a90c7f5c644cd32bd16f8327a5046877"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0-alpha.1/kclvm-v0.7.0-alpha.1-linux-amd64.tar.gz"
      sha256 "6511b50b29da87a09b0d674caefed78ac350b11108248c04f1f35f0ff10a5a53"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
