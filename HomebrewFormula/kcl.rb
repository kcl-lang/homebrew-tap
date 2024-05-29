# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kcl < Formula
  desc "KCL Command Line Interface"
  homepage "https://github.com/kcl-lang/kcl"
  version "0.9.0-beta.1"
  license "Apache License"

  depends_on "kcl-lsp"

  on_macos do
    on_intel do
      url "https://github.com/kcl-lang/cli/releases/download/v0.9.0-beta.1/kcl-v0.9.0-beta.1-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "fbf587b29fc0bd21c8f7abd0d09c50034d84347791a1d56f27992eff0648eba4"

      def install
        bin.install "kcl"
      end
    end
    on_arm do
      url "https://github.com/kcl-lang/cli/releases/download/v0.9.0-beta.1/kcl-v0.9.0-beta.1-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a5d8e96cd7cd520179ec68124493b702c0fc53a2e3b6dae9b88c0ba13fee1cbd"

      def install
        bin.install "kcl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kcl-lang/cli/releases/download/v0.9.0-beta.1/kcl-v0.9.0-beta.1-linux-amd64.tar.gz", using: CurlDownloadStrategy
        sha256 "777b3e06ea164572e7b9e7fb2473076f7fe4611b5596eb9510d1ec64b99619f5"

        def install
          bin.install "kcl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kcl-lang/cli/releases/download/v0.9.0-beta.1/kcl-v0.9.0-beta.1-linux-arm64.tar.gz", using: CurlDownloadStrategy
        sha256 "5487a85242081403ea86d67f2b67cf1643cdbdfc816abd6b9987ec235646cad4"

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
