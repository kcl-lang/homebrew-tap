class Kclvm046 < Formula
    desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
    homepage "https://kcl-lang.io"
    version "0.4.6"
    license "Apache License"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.5/kclvm-v0.4.5-darwin-arm64.tar.gz"
        sha256 "139224d053fc7c90d7064c53f1c1c309209a84da8d496b8cb947e1968ffd24cb"
      end
      if Hardware::CPU.intel?
        url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.5/kclvm-v0.4.6-alpha.1-darwin-amd64.tar.gz"
        sha256 "8bdd8e0410a50979cce5ba8627c3a72107113d56292202543a2b4a0ca402856a"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.5/kclvm-v0.4.5-linux-amd64.tar.gz"
        sha256 "e82d1628325d094e6ee4f21005077988190f82d320a32af866e2c68b92fa63c2"
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
