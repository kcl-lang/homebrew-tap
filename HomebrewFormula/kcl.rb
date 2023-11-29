# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcl < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.7.0-beta.2"
  license "Apache License"

  depends_on "kcl-lsp@0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-beta.2/kcl-v0.7.0-beta.2-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "37637aa94a8ce252e0d0d3b67da9c4b5a2af65f433274307e0b43fe8396e46a1"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-beta.2/kcl-v0.7.0-beta.2-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c7f8ee9b88267910e6675e9a600b4176fc9c9384e8882a1338f7f1b6f5083c67"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-beta.2/kcl-v0.7.0-beta.2-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ade65ae7c09308819939dc8aa0d3866484bb50459ba92c3c6728f7bd27573ad7"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-beta.2/kcl-v0.7.0-beta.2-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e8b13565416e1f0ac2623fa4318aa2b0dc195ce406e49b2ca39d2af19a03b8ec"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
