class KclLsp < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.10.0"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0/kclvm-v0.10.0-darwin-amd64.tar.gz"
      sha256 "d574568e8ec0b771672ff19b5f7b4d738cc239789207985c51e8304432e5c6b6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0/kclvm-v0.10.0-darwin-arm64.tar.gz"
      sha256 "beced3b58c4abaca86ac5a5079d763e16a5485f1c3e696f32f94673b32455def"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0/kclvm-v0.10.0-linux-amd64.tar.gz"
      sha256 "7d1339763ea39facb3319ddc313f3449aa71dcdd935ef7ee555e21e11b4ad69f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.10.0/kclvm-v0.10.0-linux-arm64.tar.gz"
      sha256 "97ddfeea1e7f64de2623d83116ab7d6572f4960a1633843c34811bdc5fe4a5f1"
    end
  end

  def install
    prefix.install_metafiles
    libexec.install Dir["*"]
    bin.install "#{libexec}/bin/kcl-language-server"
  end
end
