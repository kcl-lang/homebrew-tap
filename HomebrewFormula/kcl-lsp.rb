class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.7.5"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.5/kclvm-v0.7.5-darwin-amd64.tar.gz"
      sha256 "46edc389eae5118abdbe514c04a138f07e9d9e5fc27b1b33f0d50398c58243a8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.5/kclvm-v0.7.5-darwin-arm64.tar.gz"
      sha256 "769fa0edfecaf1a40fb5b7996125fdf69b64039d952500785bf01b796aefdc6e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.5/kclvm-v0.7.5-linux-amd64.tar.gz"
      sha256 "3d85408e41f30f78f2f751b9fc3403c0bd5a058a08bd8d3c6bdf52c42dec76ba"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.7.5/kclvm-v0.7.5-linux-arm64.tar.gz"
      sha256 "607dbd119528fd946d9a5c24ba790d5c2f3ed59eebe2fb73d80041b044deb393"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
