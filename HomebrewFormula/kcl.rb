# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcl < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.9.0-rc.1"
  license "Apache License"

  depends_on "kcl-lsp"

  on_macos do
    on_intel do
      url "https://github.com/kcl-lang/cli/releases/download/v0.9.0-rc.1/kcl-v0.9.0-rc.1-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9e0d363da312385f1a63b27687922f7754c4676580210a7e0e63c1fa45279f75"

      def install
        bin.install "kcl"
      end
    end
    on_arm do
      url "https://github.com/kcl-lang/cli/releases/download/v0.9.0-rc.1/kcl-v0.9.0-rc.1-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f5335ee084b2c35406727247428f93fe740387ac4efeea54ec7e2fd652957b17"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kcl-lang/cli/releases/download/v0.9.0-rc.1/kcl-v0.9.0-rc.1-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "993766df7f678eba4234ce248fd7d314e84a975ea877fde2fea88bea52509a4c"

        def install
          bin.install "kcl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kcl-lang/cli/releases/download/v0.9.0-rc.1/kcl-v0.9.0-rc.1-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "35f251b92fd44aa90d38df78efe53daa1daae66bc8bd8d9f9d52a9d4d2ea396f"

        def install
          bin.install "kcl"
        end
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
