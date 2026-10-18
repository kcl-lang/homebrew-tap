class KclLspAT0131 < Formula
  desc "A constraint-based record & functional language mainly used in configuration and policy scenarios."
  homepage "https://kcl-lang.io"
  version "0.13.1"
  license "Apache License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.1/kcl-language-server-v0.13.1-darwin-amd64.tar.gz"
      sha256 "9b906d04b24543720d8db8c668fc977bd9d5837830aea67bc7acab99fecf4374"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.1/kcl-language-server-v0.13.1-darwin-arm64.tar.gz"
      sha256 "ae4c7d7f9b5a446ce1286b217d9ca4d64c1b7e4638cbf44ce4acad53eabca9f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.1/kcl-language-server-v0.13.1-linux-amd64.tar.gz"
      sha256 "1aa3e06b3144f1cd2a30e824ad608dd918deb445f3717cfd2bd88ff4e41971df"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/kcl/releases/download/v0.13.1/kcl-language-server-v0.13.1-linux-arm64.tar.gz"
      sha256 "015fa0aebbc99ebe5e18ca2d84014a3ef18f91fffb89cb72c406a27c5968d206"
    end
  end

  def install
    bin.install "kcl-language-server"
  end
end
