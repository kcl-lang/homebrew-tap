class Kcl < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.5.5"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.5/kclvm-v0.5.5-darwin-arm64.tar.gz"
      sha256 "408a1043105729c470a19f8c075b1563b271c3a3ca9ade2fb406d4d505edc94f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.5/kclvm-v0.5.5-darwin-amd64.tar.gz"
      sha256 "f7bbc32dd1f1837959957b69d25a9c75777caca9914330c3ba2a919f88e92dd2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.5/kclvm-v0.5.5-linux-amd64.tar.gz"
      sha256 "1f8b0b732d42461e3174c34104e6beb40467c9b0df42dcd261110ca0f5d3f6e5"
    end
  end

  def install
      prefix.install_metafiles
      libexec.install Dir["*"]
      bin.install Dir["#{libexec}/bin/*"]
      bin.env_script_all_files libexec/"bin", KCL_PLUGINS_ROOT: "#{libexec}/plugins", KCLVM_LIB_LINK_PATH: "#{libexec}/bin"
  end
end
