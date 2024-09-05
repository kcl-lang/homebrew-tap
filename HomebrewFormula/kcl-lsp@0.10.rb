class KclLspAT010 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.10.0-beta.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0-beta.1/kclvm-v0.10.0-beta.1-darwin-amd64.tar.gz"
      sha256 "963cce7cd298989a37515153e802f642e177e3c6ba3c8a3e1e852da2451fd2c6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0-beta.1/kclvm-v0.10.0-beta.1-darwin-arm64.tar.gz"
      sha256 "ec0eee82cf6abc579eb3bd614dfbd471f42d8f5e25f49c29b34d28e1b3e2fa51"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0-beta.1/kclvm-v0.10.0-beta.1-linux-amd64.tar.gz"
      sha256 "7888884d9083772acfb7435806a7e75bdbee1800bbd802a200fdf7a3cdcef9fa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0-beta.1/kclvm-v0.10.0-beta.1-linux-arm64.tar.gz"
      sha256 "e8fd1a7ab2e196497a060733a667b8051079ae78321b31838668fc0625b7c487"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
