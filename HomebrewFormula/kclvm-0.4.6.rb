class Kclvm046 < Formula
    desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
    homepage "https://kcl-lang.io"
    version "0.4.6"
    license "Apache License"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.6-beta.1/kclvm-v0.4.6-beta.1-darwin-arm64.tar.gz"
        sha256 "942f73e1f9492a42778de4c5cbf44a4c94ba6df8a2fed776f3a8f39457e58739"
      end
      if Hardware::CPU.intel?
        url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.6-beta.1/kclvm-v0.4.6-beta.1-darwin-amd64.tar.gz"
        sha256 "bb4a4b860da11cf989ccba7a4c8011660ac2193e1c0f2a382ba11ab398c740b5"
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/KusionStack/KCLVM/releases/download/v0.4.6-beta.1/kclvm-v0.4.6-beta.1-linux-amd64.tar.gz"
        sha256 "fabb34c1a7bf8bd88453a227665fe1736e041218ba8b991361557bd5120d5ed7"
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
