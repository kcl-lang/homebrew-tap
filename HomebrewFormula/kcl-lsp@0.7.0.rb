class KclLspAT070 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.7.0-alpha.2"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0-beta.1/kclvm-v0.7.0-beta.1-darwin-arm64.tar.gz"
      sha256 "f9720d46ef28dd2002d2535c3bee6036613bef8318b4912f92c3c39c6a5c4486"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0-beta.1/kclvm-v0.7.0-beta.1-darwin-amd64.tar.gz"
      sha256 "cea8f10d388f4e62a9b3e645a4539c5e160c2c549a0c6684524b865bd49ea6fb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.0-beta.1/kclvm-v0.7.0-beta.1-linux-amd64.tar.gz"
      sha256 "020070f9c3e6b2298ce76839aaa8df7f5ec039a5d807a3119a6ac91d170f25b8"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
