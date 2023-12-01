# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcl < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.7.0"
  license "Apache License"

  depends_on "kcl-lsp"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0/kcl-v0.7.0-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "acd2196fedbf2559f516ecb12de5551ab709a387a8d073b0ef035b091f883f59"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0/kcl-v0.7.0-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "d13b54ffea63fff2babdefec73da5589d6caaf0d5915d6a0acdc9de36d1d642f"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0/kcl-v0.7.0-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0a0708978d0d72fce9ffbba349f6489dc55b4f5427c8bddc000dd179bc8e9023"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0/kcl-v0.7.0-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7ad360997aa35b6f889d36ddf767e5e8d12c4287f73c8898129fbde5b2eb0858"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
