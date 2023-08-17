class Kclvm < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.5.4"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.4/kclvm-v0.5.4-darwin-arm64.tar.gz"
      sha256 "ce8d92b26b00495f90ce5d328d1bda7f43a4e9069a29bbc06b019972759f5ec6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.4/kclvm-v0.5.4-darwin-amd64.tar.gz"
      sha256 "7d8bf9f1342443ed179b43581eeb00d6e7de57132c3a8057856788d22023f222"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.4/kclvm-v0.5.4-linux-amd64.tar.gz"
      sha256 "82073bbe587d09e1e136d8318ab195cec8ae42176dc0a9e232db5479d84214d9"
    end
  end

  def install
      prefix.install_metafiles
      libexec.install Dir["*"]
      bin.install Dir["#{libexec}/bin/*"]
      bin.env_script_all_files libexec/"bin", KCL_PLUGINS_ROOT: "#{libexec}/plugins", KCLVM_LIB_LINK_PATH: "#{libexec}/bin"
  end
end
