class KclLspAT080 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.8.0"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.0/kclvm-v0.8.0-darwin-amd64.tar.gz"
      sha256 "18eabc98927dfa194e52b7065b886d8a7a87452923fc7f2d13f73e16fe50f33b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.0/kclvm-v0.8.0-darwin-arm64.tar.gz"
      sha256 "4067925fd2c56525327e32b29b18d8b13521ecc6aaea8eebba6fe905f8e57d8d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.0/kclvm-v0.8.0-linux-amd64.tar.gz"
      sha256 "39689f1d51636d06139a6a354f1054e22dd1a686ef2df7561ad6e0a8095b4b93"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.0/kclvm-v0.8.0-linux-arm64.tar.gz"
      sha256 "81ec016bc847346591277d26b03a4b0b54f745ea43f413d9dd208279fc7ed3c7"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
