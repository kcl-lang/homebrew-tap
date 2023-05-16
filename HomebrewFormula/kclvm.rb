class Kclvm < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.4.6.2"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.6.2/kclvm-v0.4.6.2-darwin-arm64.tar.gz"
      sha256 "fbc1cf817c1ac994bd1ff3ba8b5929da1e7b480f9c871ee21f1cfa61deb29fd3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.6.2/kclvm-v0.4.6.2-darwin-amd64.tar.gz"
      sha256 "cad13fc0c6a7f7d7965c218430a4d063e0ddd66bc78fe26a13b6c54971a21d4b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.6.2/kclvm-v0.4.6.2-linux-amd64.tar.gz"
      sha256 "6f72498053f3927da3bc665432d54fb95d9766a09b6f12b5b193e8a858de6615"
    end
  end

  def install
      prefix.install_metafiles
      libexec.install Dir["*"]
      bin.install Dir["#{libexec}/bin/*"]
      bin.env_script_all_files libexec/"bin", KCL_PLUGINS_ROOT: "#{libexec}/plugins", KCLVM_LIB_LINK_PATH: "#{libexec}/bin"
  end
end
