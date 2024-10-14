class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.10.3"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.3/kclvm-v0.10.3-darwin-amd64.tar.gz"
      sha256 "0c8db6d6e712f8e95c3a230ae50e7634586f36b850a03f165c024b571075eb0f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.3/kclvm-v0.10.3-darwin-arm64.tar.gz"
      sha256 "8c08c0b675c65cdaa6c4609da179c5ea60545c04d1f5e0ad20945ca098f7efbc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.3/kclvm-v0.10.3-linux-amd64.tar.gz"
      sha256 "3d0bd10c0121df6d639991cce80bf159e66e0b4e29a0a92f6b23cda9391ca0e1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.3/kclvm-v0.10.3-linux-arm64.tar.gz"
      sha256 "504217ce633fd77839e187dade6834a452f46f2858fbf7a9507f82399cb4fd8a"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
