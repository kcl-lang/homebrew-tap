class Kclvm < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.5.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.1/kclvm-v0.5.1-darwin-arm64.tar.gz"
      sha256 "d572d4dc089f1411021ccb87313b7ca44dcaad95bb60c76b21a3a71036e90800"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.1/kclvm-v0.5.1-darwin-amd64.tar.gz"
      sha256 "8379422dea3ee5f3e7ba89d6d116da72ad57b349cde206f08240be403f9efe2a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.1/kclvm-v0.5.1-linux-amd64.tar.gz"
      sha256 "61949a99b8711e13fb4c9a8a1499c34911fb0a35ef1023424e1a82937f713951"
    end
  end

  def install
      prefix.install_metafiles
      libexec.install Dir["*"]
      bin.install Dir["#{libexec}/bin/*"]
      bin.env_script_all_files libexec/"bin", KCL_PLUGINS_ROOT: "#{libexec}/plugins", KCLVM_LIB_LINK_PATH: "#{libexec}/bin"
  end
end
