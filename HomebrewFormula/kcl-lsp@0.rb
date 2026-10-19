class KclLspAT0 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.13.2"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-darwin-amd64.tar.gz"
      sha256 "e04d9aea15059580d6088992d45ed6b9da72566ae0f80026fcff63f709a71216"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-darwin-arm64.tar.gz"
      sha256 "e9eaa5ab6dbd038636ca6b69af42ad136802d4e703e6c01edb8f3a3c1472ba7a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-linux-amd64.tar.gz"
      sha256 "b82689ea026f049afca0c8e31e81f9033f1cec06017201bc4346f4284fbdb371"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-linux-arm64.tar.gz"
      sha256 "ca056605dd4ecbf22542419d8e8b0954da426ad6160d50c5f03151e750727e63"
    end
  end

  def install
    bin.install "kcl-language-server"
  end
end
