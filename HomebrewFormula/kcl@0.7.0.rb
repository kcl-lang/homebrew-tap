# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KclAT070 < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.7.0-alpha.2"
  license "Apache License"

  depends_on "kcl-lsp@0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.2/kcl-v0.7.0-alpha.2-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "638e6a8b92e8c21fbf9053782e806dc6b9ac77f2a558c98bbd64497801147dc4"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.2/kcl-v0.7.0-alpha.2-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "cb1c40ceb8ef6dda49030b794b253eb46691a232b41af214199207c7b72443cb"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.2/kcl-v0.7.0-alpha.2-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2d7f7e2b2373704164175cd36f5ef65a743853f14e3631c887a44f2556879f6c"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.0-alpha.2/kcl-v0.7.0-alpha.2-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f908bed89e663fb0ec73bec7f36449c73acf18835197d2b9978c714d27b2562a"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end