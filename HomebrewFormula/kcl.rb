# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcl < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.8.0-alpha.1"
  license "Apache License"

  depends_on "kcl-lsp"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.0-alpha.1/kcl-v0.8.0-alpha.1-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "844ab62a4f382d69afece83e8ad9bf9e620223cf85f2d982c003a2a746fe1826"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.0-alpha.1/kcl-v0.8.0-alpha.1-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "edc8770c70c18b5f67f7cca9b210cdcf33a9e750f41ddffed3fcdbc02215d419"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.0-alpha.1/kcl-v0.8.0-alpha.1-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f30ec24d8a6f82e4a5ace5072e401d2d499a4b52f57961405bdf232407f3b44e"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.0-alpha.1/kcl-v0.8.0-alpha.1-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4e84e13819be0d9cc7e8c5da5eb8d40d83957dc309b68f14aacd617f5550dd29"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
