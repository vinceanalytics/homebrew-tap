# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vince < Formula
  desc "The Cloud Native Web Analytics Platform"
  homepage "https://vinceanalytics.github.io"
  version "0.0.20"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.20/vince_darwin_arm64.tar.gz"
      sha256 "c4c2b3b1264766ffd963c3517c22c1fb2e16c45fcd23adb3cc9d8a1a586af4b7"

      def install
        bin.install "vince"
        bash_completion.install "completions/vince/vince.bash" => "vince"
        zsh_completion.install "completions/vince/vince.zsh" => "_vince"
        fish_completion.install "completions/vince/vince.fish"
        man1.install "man/vince.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.20/vince_darwin_x86_64.tar.gz"
      sha256 "785fb6c6e33d6bfaa0e9981f3b0aecec382e53f98faaefef4a73a55683462b04"

      def install
        bin.install "vince"
        bash_completion.install "completions/vince/vince.bash" => "vince"
        zsh_completion.install "completions/vince/vince.zsh" => "_vince"
        fish_completion.install "completions/vince/vince.fish"
        man1.install "man/vince.1"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.20/vince_linux_arm64.tar.gz"
      sha256 "ccee98e6697f00030a5f6cf0cc77925d44e08cb865719aa7f6f12d1728acb2d9"

      def install
        bin.install "vince"
        bash_completion.install "completions/vince/vince.bash" => "vince"
        zsh_completion.install "completions/vince/vince.zsh" => "_vince"
        fish_completion.install "completions/vince/vince.fish"
        man1.install "man/vince.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.20/vince_linux_x86_64.tar.gz"
      sha256 "d957cc054775f20f2c2e797b8dffbefa76197b257b0f9fad3f90b26d2bd84938"

      def install
        bin.install "vince"
        bash_completion.install "completions/vince/vince.bash" => "vince"
        zsh_completion.install "completions/vince/vince.zsh" => "_vince"
        fish_completion.install "completions/vince/vince.fish"
        man1.install "man/vince.1"
      end
    end
  end

  test do
    system "#{bin}/vince version"
  end
end
