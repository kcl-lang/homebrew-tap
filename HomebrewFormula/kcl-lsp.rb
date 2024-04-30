class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.8.6"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.6/kclvm-v0.8.6-darwin-amd64.tar.gz"
      sha256 "5ef91be3b38f130eaae9ad00478471493df89c012eb70f8517a22217c031a230"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.6/kclvm-v0.8.6-darwin-arm64.tar.gz"
      sha256 "cef60e048d257bd3950a94f7484c009418f044d51c1c43a46e61cf217f89cf58"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.6/kclvm-v0.8.6-linux-amd64.tar.gz"
      sha256 "fbcc4b1ce92db66969a7559c7d3beea1a3f5dfadffe407d1f655ad55ea2b1b4c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.6/kclvm-v0.8.6-linux-arm64.tar.gz"
      sha256 "e5d23434198f4222ee98d1601c59e8754e3fc48ee9ad9e924e2d0fbe7133ee30"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
