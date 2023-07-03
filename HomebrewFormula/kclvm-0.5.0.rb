class Kclvm050 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.5.0-beta.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.0-beta.1/kclvm-v0.5.0-beta.1-darwin-arm64.tar.gz"
      sha256 "1f535d19ff492119d4e4a1cdac53f9f9a36744e1bfc11fed10d5e0d5743d5418"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.0-beta.1/kclvm-v0.5.0-beta.1-darwin-amd64.tar.gz"
      sha256 "53077d4653cb8c2d886cb8197722954873beef9e880b959d0510b4588f82607b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.0-beta.1/kclvm-v0.5.0-beta.1-linux-amd64.tar.gz"
      sha256 "d8939987ec4f34d3cb340154790d839120d3f0403977ac8f937dde8104353ce3"
    end
  end

  def install
      prefix.install_metafiles
      libexec.install Dir["*"]
      bin.install Dir["#{libexec}/bin/*"]
      bin.env_script_all_files libexec/"bin", KCL_PLUGINS_ROOT: "#{libexec}/plugins", KCLVM_LIB_LINK_PATH: "#{libexec}/bin"
  end
end
