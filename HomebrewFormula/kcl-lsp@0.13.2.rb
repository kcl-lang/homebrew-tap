class KclLspAT0132 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.13.2"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-darwin-amd64.tar.gz"
      sha256 "e0bced97fe9216ac36bfc456c50112b49e0a1ae668e0d371431927d52682d55e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-darwin-arm64.tar.gz"
      sha256 "09cc18d7a992b5ea77f30afea910128cb3d9b42e3c5dbf5d2cbdc614360906ba"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-linux-amd64.tar.gz"
      sha256 "07acb37cf6ebe95775c3643bd1ae025acf830e5d5716fc197c32cc97f6841f12"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-linux-arm64.tar.gz"
      sha256 "03910f485788b430ca57cb4a891f21ef969f00873376a956dd600c81fbc2839e"
    end
  end

  def install
    bin.install "kcl-language-server"
  end
end
