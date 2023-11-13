class KclLspAT070 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.7.0-alpha.2"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0-alpha.2/kclvm-v0.7.0-alpha.2-darwin-arm64.tar.gz"
      sha256 "7c157b35910cc72651b5c28684463fbdcba8700a0de0a8d0f345c0b2c317d18b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0-alpha.2/kclvm-v0.7.0-alpha.2-darwin-amd64.tar.gz"
      sha256 "544631966ca8c345e639e964d031e825591abe7da21033b50a00af76e0624d66"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0-alpha.2/kclvm-v0.7.0-alpha.2-linux-amd64.tar.gz"
      sha256 "e44f4dde4fbf86207c513bd69a845b6f389594b62fd303b1deec6f4286a7262e"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
