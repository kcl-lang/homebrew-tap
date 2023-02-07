class Kclvm < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.4.4"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.4/kclvm-v0.4.4-darwin-arm64.tar.gz"
      sha256 "a79f37a7ad372619b8f1250fa1d90c81c016ab54828c0d94f80037ee40e9af67"
    end
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.4/kclvm-v0.4.4-darwin-amd64.tar.gz"
      sha256 "a9ecb22f1b51581a688145b64429b0e108220e20eda2e21f479abba587e0d272"
    end
  end

  def install
    bin.install "bin/kcl"
    bin.install "bin/kcl-vet"
    bin.install "bin/kcl-test"
    bin.install "bin/kcl-plugin"
    bin.install "bin/kcl-lint"
    bin.install "bin/kcl-fmt"
    bin.install "bin/kcl-doc"
    bin.install "bin/kclvm"
    bin.install "bin/kclvm_cli"
    bin.install "bin/libkclvm_cli_cdylib.dylib"

    Dir.glob("bin/*") do |p|
      bin.install p
    end
    Dir.glob("lib/*") do |p|
      lib.install p
    end
    Dir.glob("plugins/*") do |p|
      plugins.install p
    end

  end

  test do
    system "${bin}/kcl -V"
  end

end
