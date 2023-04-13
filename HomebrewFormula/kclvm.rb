class Kclvm < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.4.6"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.6/kclvm-v0.4.6-darwin-arm64.tar.gz"
      sha256 "7c1f14f12bc5a7d547e79e55ddfe9e92bcdfa0194892261d301f680b20d7feb5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.6/kclvm-v0.4.6-darwin-amd64.tar.gz"
      sha256 "a45e668aea04cd8e14896d14667c8117c72f9e3a109c80498c6141a371dfb0b3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.6/kclvm-v0.4.6-linux-amd64.tar.gz"
      sha256 "f1973be7b8a4d29d98794575707a054c24ff8ac30b23414cd3a32e661abeb919"
    end
  end

  def install
      prefix.install_metafiles
      libexec.install Dir["*"]
      bin.install Dir["#{libexec}/bin/*"]
      bin.env_script_all_files libexec/"bin", KCL_PLUGINS_ROOT: "#{libexec}/plugins"
  end

  test do
    system "${bin}/kcl -V"
  end

end
