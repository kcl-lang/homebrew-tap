class KclLspAT071 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.7.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.1/kclvm-v0.7.1-darwin-arm64.tar.gz"
      sha256 "33a601ee06d4305d27078d692d7eaecd33c14ec4c8182d5fcb4f19b7d54aa866"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.1/kclvm-v0.7.1-darwin-amd64.tar.gz"
      sha256 "6f157e5f69e4c2d7099dc0825cb9d4900625b698bc5057c17e909f80c567fa02"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.1/kclvm-v0.7.1-linux-amd64.tar.gz"
      sha256 "2d02c00f8fa11e839c945829a90f585410993a3ddb11fe67be73f0c479b86284"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
