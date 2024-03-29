# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KclAT072 < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.7.2"
  license "Apache License"

  depends_on "kcl-lsp@0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.2/kcl-v0.7.2-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "440e5a4f9aecda7eb336163a0ede2f51a429c492ac731e75b66f44b7e716dbda"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.2/kcl-v0.7.2-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fdeb5dad670936f90bde1723a505fd271b80f510d3af5f633481ebb710b0337c"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.2/kcl-v0.7.2-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "75a46fcee1fe2389c87aed1134a48bf1c8e1fecc52b0afea8992784e432d062b"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.2/kcl-v0.7.2-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2e70787139efa61689b0252a3582b4e9d4169b65adebb802e43f0176269bc2c7"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
