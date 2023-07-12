class Kclvm < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.5.0"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.0/kclvm-v0.5.0-darwin-arm64.tar.gz"
      sha256 "40ea8de664aa4d3fc0caf235b2d49071624e2d33970400e5c9462711164422e9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.0/kclvm-v0.5.0-darwin-amd64.tar.gz"
      sha256 "f15c96cad4158cbd40072be52a7948b5d1d6b67732e6e1bc925edd80b244859c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.5.0/kclvm-v0.5.0-linux-amd64.tar.gz"
      sha256 "0da2a7e8f6c406683ae1515c4470554de5a4c21d0263f836dc4e0042308dbd8d"
    end
  end

  def install
      prefix.install_metafiles
      libexec.install Dir["*"]
      bin.install Dir["#{libexec}/bin/*"]
      bin.env_script_all_files libexec/"bin", KCL_PLUGINS_ROOT: "#{libexec}/plugins", KCLVM_LIB_LINK_PATH: "#{libexec}/bin"
  end
end
