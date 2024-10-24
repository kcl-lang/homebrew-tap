class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.10.6"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.6/kclvm-v0.10.6-darwin-amd64.tar.gz"
      sha256 "1a7f88b44ed2d34f7324269cd8648aeb894fa3770b0e8e58d38a922cf9b70786"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.6/kclvm-v0.10.6-darwin-arm64.tar.gz"
      sha256 "823aff64719f81235c12fb16608a4852fadb5aeb3048d31e780a9242dcf85bb9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.6/kclvm-v0.10.6-linux-amd64.tar.gz"
      sha256 "ef6c3638a11e091150f9f165f55d1efa1d32024d17688300db797a31831ecbab"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.6/kclvm-v0.10.6-linux-arm64.tar.gz"
      sha256 "b799c0604d3c7eff778a9c24b19b9a784e3c094cd91f0630e0527d7642ca46d6"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
