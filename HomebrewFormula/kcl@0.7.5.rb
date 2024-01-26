# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KclAT075 < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.7.5"
  license "Apache License"

  depends_on "kcl-lsp@0.7.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.5/kcl-v0.7.5-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9ebb37002d5abe725ddfa65bacbd01963fce211a320f8bf92d9690bdf21e7474"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.5/kcl-v0.7.5-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2ac4438c5a39a08f1709979dfedfdc174e50a64ca3210f4753cf08b4fb911f08"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.5/kcl-v0.7.5-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "069de7acdebc4cbb1183da6c68cc854aaef011c608d606fd06a01fe67a1fb044"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.5/kcl-v0.7.5-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c5342837a63fab7918b4ef1288471e5715dbc8dd5e18a08c89bc7713e4b93e55"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end
