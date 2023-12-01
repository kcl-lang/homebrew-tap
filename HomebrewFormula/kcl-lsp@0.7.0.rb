class KclLspAT070 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.7.0"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0/kclvm-v0.7.0-darwin-arm64.tar.gz"
      sha256 "6356b1d9abe2d6118b2a4ec290d2060ca6be46d5d380527e4f132714b063eba5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0/kclvm-v0.7.0-darwin-amd64.tar.gz"
      sha256 "762019f4af13e05160fc6488666db3a8fa5043fc8aa713235c9cf202bc4f5390"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0/kclvm-v0.7.0-linux-amd64.tar.gz"
      sha256 "117747a069974216a34ec61f30f1c28f500e8dedd757a5e1d3c375a810407b88"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
