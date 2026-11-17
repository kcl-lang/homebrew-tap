class KclLspAT013 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.13.3"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.3/kcl-language-server-v0.13.3-darwin-amd64.tar.gz"
      sha256 "950c7ad0afeca97b1c964008d3f2ea494f5407c7e0b26178056d7a95b1ab5797"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.3/kcl-language-server-v0.13.3-darwin-arm64.tar.gz"
      sha256 "3ee0b4dcde465c0f90a8988f2b585cc355de0aeca881b0f193d7e2161675dda2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.3/kcl-language-server-v0.13.3-linux-amd64.tar.gz"
      sha256 "2a514fb7bd76a821bc6b850ec3d289490415d4d8f0ac746e17144753be988415"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.3/kcl-language-server-v0.13.3-linux-arm64.tar.gz"
      sha256 "18c001a4bde21ceee459a76254fe1be7f3dd7e1d8cdd909eb57c7162adf12771"
    end
  end

  def install
    bin.install "kcl-language-server"
  end
end
