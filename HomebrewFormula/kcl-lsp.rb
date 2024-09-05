class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.10.0-rc.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0-rc.1/kclvm-v0.10.0-rc.1-darwin-amd64.tar.gz"
      sha256 "d6485342381456c86e0b37ebcadf94e0237d24de08cbebddb0a29e445f30d95f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0-rc.1/kclvm-v0.10.0-rc.1-darwin-arm64.tar.gz"
      sha256 "4215200f4b21b061d45d02fce8b3485cb7ad9d8e89e531ffe459abb217963cf5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0-rc.1/kclvm-v0.10.0-rc.1-linux-amd64.tar.gz"
      sha256 "9ad67df74b6bc9ab1cedf09631c8e8cadd143b55d8841f5c415f8b004bd91ed4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0-rc.1/kclvm-v0.10.0-rc.1-linux-arm64.tar.gz"
      sha256 "ee8dccb0cdd16797241854de3d634474215a1239798276fd500ac22a253bb907"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
