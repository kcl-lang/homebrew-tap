class KclLspAT013 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.13.0"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.0/kcl-language-server-v0.13.0-darwin-amd64.tar.gz"
      sha256 "cd4d1828a4cdc3224a99f42227bdc0e19a0dd6d97a93c297f752050b7d6f2f9b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.0/kcl-language-server-v0.13.0-darwin-arm64.tar.gz"
      sha256 "48ec9e765b134cf4add04ef8963442468c38bbe3f2ad8c1f0553130d7ebff7bc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.0/kcl-language-server-v0.13.0-linux-amd64.tar.gz"
      sha256 "fb8205232206845ae5b833410c3166248fd38f3b289df3dc6bbaca1f42cedb14"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.0/kcl-language-server-v0.13.0-linux-arm64.tar.gz"
      sha256 "3f65d9d20fb5d9c0f06f51f86e4f6a62e22f05052a261ed1cf5db2ddda2c0e6e"
    end
  end

  def install
    bin.install "kcl-language-server"
  end
end