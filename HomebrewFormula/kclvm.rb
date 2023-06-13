class Kclvm < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.5.0-alpha.3"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.5.0-alpha.3/kclvm-v0.5.0-alpha.3-darwin-arm64.tar.gz"
      sha256 "78bbd9aefb16dff6900c20ff3d816ca4c00b58e1f561aaf53ed55ac156bd2c4f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.5.0-alpha.3/kclvm-v0.5.0-alpha.3-darwin-amd64.tar.gz"
      sha256 "72e611f31319bf7f3e974fb3234930a38002b625e44640165b070d4c57b00995"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.5.0-alpha.3/kclvm-v0.5.0-alpha.3-linux-amd64.tar.gz"
      sha256 "68a1554eb4b45340c92d1b9c0d0752c3673d2f4ef37255ee064dfc91d791238d"
    end
  end

  def install
      prefix.install_metafiles
      libexec.install Dir["*"]
      bin.install Dir["#{libexec}/bin/*"]
      bin.env_script_all_files libexec/"bin", KCL_PLUGINS_ROOT: "#{libexec}/plugins", KCLVM_LIB_LINK_PATH: "#{libexec}/bin"
  end
end
