class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.5.3"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.3/kclvm-v0.5.3-darwin-arm64.tar.gz"
      sha256 "bf6bdcc864e2d85b596ed2ae4e488c8dcb792f907ead72f813c82322b8671d0b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.3/kclvm-v0.5.3-darwin-amd64.tar.gz"
      sha256 "70f8aaaff1feecd0b9461472fe6ff9797dbe23a26d27dd699024484c8974c88f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.3/kclvm-v0.5.3-linux-amd64.tar.gz"
      sha256 "b1c6340e2573c79121a893b588d40cee66ee37e5e74c8344c23943a5dfd0a799"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
