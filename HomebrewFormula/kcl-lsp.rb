class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "v0.5.0-alpha.4"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.5.0-alpha.4/kclvm-v0.5.0-alpha.4-darwin-arm64.tar.gz"
      sha256 "7525b94c825b07f851eb29f1a03a39277a31bc0aab123e70711663d43230fecf"
    end
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.5.0-alpha.4/kclvm-v0.5.0-alpha.4-darwin-amd64.tar.gz"
      sha256 "9ea3f4ec325bd923d5a481d3e7504ff8be15befe35872252cc10a656b0a585b7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/KusionStack/KCLVM/releases/download/v0.5.0-alpha.4/kclvm-v0.5.0-alpha.4-linux-amd64.tar.gz"
      sha256 "4bbb4b46843597b7f0ee18f7b248ed69c50460ceee66788cb0727d7a48cdd025"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
