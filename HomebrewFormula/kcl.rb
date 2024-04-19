# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcl < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.8.6"
  license "Apache License"

  depends_on "kcl-lsp"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.6/kcl-v0.8.6-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b1f292e34f787990d78859a5ef73f8593f76f97bf8e71b964db69c9507bf20c1"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.6/kcl-v0.8.6-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "90fb2a43ae62ae12fd22e676d21aca8dac78bd01323d2a3d6786ec5137a5093d"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.6/kcl-v0.8.6-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "47c275a32a1e1c56e681f649bf11ab4acf7cd199512fe1f3b43036f1310f163e"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.8.6/kcl-v0.8.6-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7c4a5425b0f80dac70bad0281c0a456980e5a819af8f1141c04c97f4c307b4b9"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
