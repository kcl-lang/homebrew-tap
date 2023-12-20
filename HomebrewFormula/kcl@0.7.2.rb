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
      sha256 "bb24bcac1225478c960c3f44bbbc4ea7d90b3d69fb86cc257177d886eacaadaf"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.2/kcl-v0.7.2-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2b649047a258c1ff48039e4cd3ea44896bd46cdc7efbcf377667e4a2fee4279f"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.2/kcl-v0.7.2-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "e9c283070dcc1d6f9e106d8876a08cdeeb3db1580ad347402d9f806983bc9891"

      def install
        bin.install "kcl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kcl-lang/cli/releases/download/v0.7.2/kcl-v0.7.2-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "3dd08051872a2a2d1ad2930865c566e1bdbb9b3d834279d46145283675259302"

      def install
        bin.install "kcl"
      end
    end
  end

  test do
    system "#{bin}/kcl version"
  end
end