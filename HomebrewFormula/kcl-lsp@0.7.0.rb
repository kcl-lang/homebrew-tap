class KclLspAT070 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.7.0-beta.2"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/0.7.0-beta.2/kclvm-0.7.0-beta.2-darwin-arm64.tar.gz"
      sha256 "51c06fb14b87dc96c80a861986ddfb12e45cd066992f3d05a3aa695f04265589"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/0.7.0-beta.2/kclvm-0.7.0-beta.2-darwin-amd64.tar.gz"
      sha256 "fd577860a80f2ce1632bbdd3ce04728e8ccf6fdb9fcf82b966381e27aedc35af"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/0.7.0-beta.2/kclvm-0.7.0-beta.2-linux-amd64.tar.gz"
      sha256 "05c7d808703678dbf430deeb0d0f0e8be369417b5011e3ad06acbb90bcd458f8"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
