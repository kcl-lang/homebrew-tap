class Kcl < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.5.6"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.6/kclvm-v0.5.6-darwin-arm64.tar.gz"
      sha256 "126ba53bf176c524a40f18c9286b919a7419b2f4245758380e45ded78b6e2ff7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.6/kclvm-v0.5.6-darwin-amd64.tar.gz"
      sha256 "9a2fca6f789e7ac529a69a33f6613e746c52847ef9a7a4a7354ace2674444593"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.6/kclvm-v0.5.6-linux-amd64.tar.gz"
      sha256 "ce2ba155013e9bfd7f951e754390a032ed577b98ba8693b8b3e486d9ee091c3b"
    end
  end

  def install
      prefix.install_metafiles
      libexec.install Dir["*"]
      bin.install Dir["#{libexec}/bin/*"]
      bin.env_script_all_files libexec/"bin", KCL_PLUGINS_ROOT: "#{libexec}/plugins", KCLVM_LIB_LINK_PATH: "#{libexec}/bin"
  end
end
