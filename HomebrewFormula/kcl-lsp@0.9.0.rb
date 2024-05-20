class KclLspAT090 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.9.0-alpha.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0-alpha.1/kclvm-v0.9.0-alpha.1-darwin-amd64.tar.gz"
      sha256 "2052735ae513f74b09f47c805908e210ef640af37dcc082237e77321b1e5d469"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0-alpha.1/kclvm-v0.9.0-alpha.1-darwin-arm64.tar.gz"
      sha256 "029a194cebd40cc19ed391b721f54a9408d5d0f578ad55de736b3f9b6e163288"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0-alpha.1/kclvm-v0.9.0-alpha.1-linux-amd64.tar.gz"
      sha256 "55cddf41fab343454a39a2f9460d5a00a5ea221de659e7ebf0699a138be426f8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0-alpha.1/kclvm-v0.9.0-alpha.1-linux-arm64.tar.gz"
      sha256 "2774d6f804fc14602286ec4ca1cd8f966101b6ea68cbe9d1679c7f52539cc12b"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
