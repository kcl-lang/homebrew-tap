class KclLspAT011 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.11.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.1/kclvm-v0.11.1-darwin-amd64.tar.gz"
      sha256 "343663d3aa1c9b9457a04db07328e035ba0d91dcf01a8d9655dfbdc1f8e924ed"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.1/kclvm-v0.11.1-darwin-arm64.tar.gz"
      sha256 "4f4f555dd53afcb3b48fcdb79c7dd03e519331dbff97a837a1653b0eec3a35ee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.1/kclvm-v0.11.1-linux-amd64.tar.gz"
      sha256 "018bd782b3d24e508c3cdc2c644233d00ba5cf32046f8e25f433375c84db9415"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.11.1/kclvm-v0.11.1-linux-arm64.tar.gz"
      sha256 "3affc391894732cc267378417b72710badd64f05d84924572733e15133c7fa20"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
