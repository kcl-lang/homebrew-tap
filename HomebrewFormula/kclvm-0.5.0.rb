class Kclvm050 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.5.0-alpha.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.5.0-alpha.1/kclvm-v0.5.0-alpha.1-darwin-arm64.tar.gz"
      sha256 "5e4fe1558a56247e6a2a4ad9d09ec6314205679aa77d20d7bda43cc9f3165bc2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.5.0-alpha.1/kclvm-v0.5.0-alpha.1-darwin-amd64.tar.gz"
      sha256 "e5f21dae620618bc480151993e88012190c32e6723d062b4c03db7b80d6e3ca1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.5.0-alpha.1/kclvm-v0.5.0-alpha.1-linux-amd64.tar.gz"
      sha256 "b888b56f72625e7fb74cae17c1b7735e3198fd1854ca5981a2e0578f75b1535b"
    end
  end

  def install
      prefix.install_metafiles
      libexec.install Dir["*"]
      bin.install Dir["#{libexec}/bin/*"]
      bin.env_script_all_files libexec/"bin", KCL_PLUGINS_ROOT: "#{libexec}/plugins", KCLVM_LIB_LINK_PATH: "#{libexec}/bin"
  end
end
