class KclLspAT010 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.10.8"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.8/kclvm-v0.10.8-darwin-amd64.tar.gz"
      sha256 "11374ba5f96764123a7f63b6748677dda409e03f2ddde92db27ea8aff1d7247c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.8/kclvm-v0.10.8-darwin-arm64.tar.gz"
      sha256 "10433acb7848514579d3515063862f13b5e76e59971e42ad2b8650e8ec013d17"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.8/kclvm-v0.10.8-linux-amd64.tar.gz"
      sha256 "d50a67037b6d9637d051d1f9f4aaf68521636a64f4524ea1d4b6e3fdc8e5a1b5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.8/kclvm-v0.10.8-linux-arm64.tar.gz"
      sha256 "b5fadb779747531f7944ffcf511a793a7d57454efdf0333b72e85de86801d490"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
