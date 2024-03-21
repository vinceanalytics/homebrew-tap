# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vince < Formula
  desc "API first high performance self hosted and cost effective privacy friendly web analytics  server for organizations of any size"
  homepage "https://vinceanalytics.com"
  version "0.0.67"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.67/vince_darwin_arm64.tar.gz"
      sha256 "cdaf7a7c2f1be3a755702d79cae3a09f04af36a7ab1c59d81f5ba9f6841af813"

      def install
        bin.install "vince"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.67/vince_darwin_x86_64.tar.gz"
      sha256 "f3a17c8670a3768f4ea7adb0f8193914a0444d96b67a4fd865eff49f2fe62234"

      def install
        bin.install "vince"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.67/vince_linux_arm64.tar.gz"
      sha256 "0475f872d66acbd9495c63b8f102ef1fef9b9b55df98284827065a5d38698ebc"

      def install
        bin.install "vince"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.67/vince_linux_x86_64.tar.gz"
      sha256 "68f42f654b8042211c895a9e6c52841ed68841f4febcf2afe33bbc9d497d431b"

      def install
        bin.install "vince"
      end
    end
  end

  test do
    system "#{bin}/vince --version"
  end
end
