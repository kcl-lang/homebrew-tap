class KclLspAT090 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.9.0-beta.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0-beta.1/kclvm-v0.9.0-beta.1-darwin-amd64.tar.gz"
      sha256 "b74b8c0f463f6a944e07b6de44f856db5d9b378e5db4ea26f6ff40c1d1a5a4ec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0-beta.1/kclvm-v0.9.0-beta.1-darwin-arm64.tar.gz"
      sha256 "b20a5c7872276749aa1ed2af7fcede9ef831b76f749bae8956b19d37d9979a1e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0-beta.1/kclvm-v0.9.0-beta.1-linux-amd64.tar.gz"
      sha256 "341cc6de9a07db85c5c8c8433cfbdcdb1521f6e353176296e346ff3f17917dc1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0-beta.1/kclvm-v0.9.0-beta.1-linux-arm64.tar.gz"
      sha256 "1473067538609dc65f938c5ddd60e87b4165f8a4f156ea25243f9050dad89295"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
