class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.8.3"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.3/kclvm-v0.8.3-darwin-amd64.tar.gz"
      sha256 "f1825109c6ab9f54c7559fc1dc706a773aa5f675bc16ef0b0fc68fa8be0378d0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.3/kclvm-v0.8.3-darwin-arm64.tar.gz"
      sha256 "6204aa3659f87b618e08c60bab6c05c238aab20daa4f2fcc6b4c9b7160725a6e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.3/kclvm-v0.8.3-linux-amd64.tar.gz"
      sha256 "52f49026a7767388ffa6147138d770314e1554ec437619abcde6f3bd0a1a1563"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.8.3/kclvm-v0.8.3-linux-arm64.tar.gz"
      sha256 "49698899fdce62f6806d8c11402cd10ea86e35762baae7283e5f5338dbb0bd58"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
