class KclLspAT074 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.7.4"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.4/kclvm-v0.7.4-darwin-amd64.tar.gz"
      sha256 "d73dfdb720273362e65d577e14e2b2fbced5e9ee5a0fc695c8575632e0df1620"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.4/kclvm-v0.7.4-darwin-arm64.tar.gz"
      sha256 "2b3a886fec8ff97fafd05a561dff6f3111d741d2370fa0ccdd99f13d9e1e28ec"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.4/kclvm-v0.7.4-linux-amd64.tar.gz"
      sha256 "b1ca99c04d50ca34a3b154bc259bc59975e1b189f26f9092600025a3b47fb198"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.4/kclvm-v0.7.4-linux-arm64.tar.gz"
      sha256 "22ae6243218912728e53376aa68a978a4e69e01ac2fd4380a3cbb8b3ec3f370ab"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
