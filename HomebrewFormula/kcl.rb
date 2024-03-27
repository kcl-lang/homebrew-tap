# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcl < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.8.3"
  license "Apache License"

  depends_on "kcl-lsp"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.3/kcl-v0.8.3-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5ec7864c3365c9b8cdf71553e827f7fb0dda033d86a87a77e82090c3823a01ed"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.3/kcl-v0.8.3-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3876c0b0887861fbc7da513dab132015510c72a1cdd1a9841b04b0d112b788f2"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.3/kcl-v0.8.3-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "58ee53636c55f8f52830dd27049f227bafcff803b29456a65ea168a21ac81b81"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.3/kcl-v0.8.3-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d137a5a614fbb913233acdfee101791695a1a14d4f9f8e55fbca0bd4d76e8483"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
