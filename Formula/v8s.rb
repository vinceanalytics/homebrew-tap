# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class V8s < Formula
  desc "kubernetes controller for vince- The Cloud Native Web Analytics Platform"
  homepage "httpd://vinceanalytics.github.io"
  version "0.0.17"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.17/v8s_darwin_arm64.tar.gz"
      sha256 "1d8d1da4e07a149cbab1814e2a87ff45bbddd86e997651856969a77ab179cd38"

      def install
        bin.install "v8s"
        bash_completion.install "completions/v8s/v8s.bash" => "v8s"
        zsh_completion.install "completions/v8s/v8s.zsh" => "_v8s"
        fish_completion.install "completions/v8s/v8s.fish"
        man1.install "man/v8s.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.17/v8s_darwin_x86_64.tar.gz"
      sha256 "6e1f7dc59702015bd5deaf27e70adbc1af6de02adf7b37d3299f51c33ef9843f"

      def install
        bin.install "v8s"
        bash_completion.install "completions/v8s/v8s.bash" => "v8s"
        zsh_completion.install "completions/v8s/v8s.zsh" => "_v8s"
        fish_completion.install "completions/v8s/v8s.fish"
        man1.install "man/v8s.1"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.17/v8s_linux_arm64.tar.gz"
      sha256 "b1637aa8fd10dc1a2291c8222b2101035e39755fae37baa1d81a9aeb224f264b"

      def install
        bin.install "v8s"
        bash_completion.install "completions/v8s/v8s.bash" => "v8s"
        zsh_completion.install "completions/v8s/v8s.zsh" => "_v8s"
        fish_completion.install "completions/v8s/v8s.fish"
        man1.install "man/v8s.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.17/v8s_linux_x86_64.tar.gz"
      sha256 "0c2762f92723f613cddd19d28449bdff516c397f868b6652327cd9c74429709b"

      def install
        bin.install "v8s"
        bash_completion.install "completions/v8s/v8s.bash" => "v8s"
        zsh_completion.install "completions/v8s/v8s.zsh" => "_v8s"
        fish_completion.install "completions/v8s/v8s.fish"
        man1.install "man/v8s.1"
      end
    end
  end

  test do
    system "#{bin}/v8s version"
  end
end
