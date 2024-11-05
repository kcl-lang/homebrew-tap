class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.10.8"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.8/kclvm-v0.10.8-darwin-amd64.tar.gz"
      sha256 "ea993fb2d95450bebeab69d362e1803ea8918b7c51b3a9e449b7a59d23ab4cfb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.8/kclvm-v0.10.8-darwin-arm64.tar.gz"
      sha256 "738bff9e4a6fcaae0dcfbee2b1378d359612a08b35179fb73e1ef81ad9347a37"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.8/kclvm-v0.10.8-linux-amd64.tar.gz"
      sha256 "4b6b7365bf190d0a52f58ad3589afc6d63ba2af7a75fdbd5cb6fe8f78cf42d42"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.8/kclvm-v0.10.8-linux-arm64.tar.gz"
      sha256 "725b7a862c843d039d39ff94268e63473b29891b6176d60809e60c84ff3ad615"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
