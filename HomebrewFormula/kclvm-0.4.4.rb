class Kclvm044 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.4.4"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.4.4/kclvm-v0.4.4-darwin-arm64.tar.gz"
      sha256 "a79f37a7ad372619b8f1250fa1d90c81c016ab54828c0d94f80037ee40e9af67"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.4.4/kclvm-v0.4.4-darwin-amd64.tar.gz"
      sha256 "a9ecb22f1b51581a688145b64429b0e108220e20eda2e21f479abba587e0d272"
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
