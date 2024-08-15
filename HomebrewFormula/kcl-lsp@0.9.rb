class KclLspAT090 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.9.0"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0/kclvm-v0.9.0-darwin-amd64.tar.gz"
      sha256 "c2a3c15ef27f161e50e828c6d0c222a08f91aa5ea63c3b776689a4cfb01afe66"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0/kclvm-v0.9.0-darwin-arm64.tar.gz"
      sha256 "982e9c655ccc8814071b1c7447c5a006f1ea3b4b247bae3d7d294838de6888fa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0/kclvm-v0.9.0-linux-amd64.tar.gz"
      sha256 "e7da3a79c4ac132c3480e805a9e7e36265baf9a3af22570a55e305fb2a119165"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.9.0/kclvm-v0.9.0-linux-arm64.tar.gz"
      sha256 "41dc27627d0f00c031e541d096e20c36900f219d4f0ddfeac9cb2870c2cc7050"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
