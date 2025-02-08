class KclLspAT0110 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.11.0"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.0/kclvm-v0.11.0-darwin-amd64.tar.gz"
      sha256 "f91f583f2b35a3981795a65b508ea4aaf95c10164251450fcfe320308090cc6d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.0/kclvm-v0.11.0-darwin-arm64.tar.gz"
      sha256 "8c4858bc2a97a379452b10480b2542404658ed77b4f29521f70a38a4157e0b55"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.0/kclvm-v0.11.0-linux-amd64.tar.gz"
      sha256 "9582f728d765221a8898447d7ec2c28fe9df2699ec1d650d56a18341a55c3dc8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.0/kclvm-v0.11.0-linux-arm64.tar.gz"
      sha256 "e95ad9e09c5bb4b31596d4dd061343a7fd6e91d66e0a09985e7afb12321c9c6d"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
