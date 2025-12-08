class KclLspAT0112 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.11.2"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.2/kclvm-v0.11.2-darwin-amd64.tar.gz"
      sha256 "76f231095b69965d5d52e3d054d916fb9be535e1d7172f97fd3b3f68ab582c52"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.2/kclvm-v0.11.2-darwin-arm64.tar.gz"
      sha256 "89c315a7b280a12cd44d0e81a5135805229f56f8bff04c90c76dbb8b1ddb1427"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.2/kclvm-v0.11.2-linux-amd64.tar.gz"
      sha256 "e1ecd170373c43a6755afd47a1f4146be03a4a61499065e0b7d1d62cc5e69405"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.2/kclvm-v0.11.2-linux-arm64.tar.gz"
      sha256 "035b3b37242811a7a3c2dacee810bf9f7eef0ddd5296876aa71f346b0adc3805"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
