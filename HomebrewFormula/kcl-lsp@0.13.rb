class KclLspAT013 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.13.2"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-darwin-amd64.tar.gz"
      sha256 "208cc068de7135e470c0135af6416c1c095b6bb077d0db3dba02dc09c031c195"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-darwin-arm64.tar.gz"
      sha256 "445176382764b61aaec2472eae3821c4f6873b04203a7f1e2a6b3848b9dd0fc7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-linux-amd64.tar.gz"
      sha256 "753f63d1bd2d188fbf7168838bf9f2792f303360ec2a330135a234b5f80321b4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.2/kcl-language-server-v0.13.2-linux-arm64.tar.gz"
      sha256 "db040a0d999944a4b8d7244ba20151c399ae7f4d4a0da20d16ba3a4f638791ff"
    end
  end

  def install
    bin.install "kcl-language-server"
  end
end
