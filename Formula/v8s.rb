# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class V8s < Formula
  desc "kubernetes controller for vince- The Cloud Native Web Analytics Platform"
  homepage "httpd://vinceanalytics.github.io"
  version "0.0.7"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.7/v8s_darwin_x86_64.tar.gz"
      sha256 "44a3ab102be7e219e3a2b3fdea0ed039d2e33738f25f56c80e8a575c00b13656"

      def install
        bin.install "v8s"
        bash_completion.install "completions/v8s/v8s.bash" => "v8s"
        zsh_completion.install "completions/v8s/v8s.zsh" => "_v8s"
        fish_completion.install "completions/v8s/v8s.fish"
        man1.install "man/v8s.1"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.7/v8s_darwin_arm64.tar.gz"
      sha256 "4282c9514f17621ad21e5fc9a11971d192d72622c76657f8648407e26af2a147"

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
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.7/v8s_linux_x86_64.tar.gz"
      sha256 "e5cc7d0b727e324c2aff46b1175b0b31e2504898d24864a5ec1a05c128d2520f"

      def install
        bin.install "v8s"
        bash_completion.install "completions/v8s/v8s.bash" => "v8s"
        zsh_completion.install "completions/v8s/v8s.zsh" => "_v8s"
        fish_completion.install "completions/v8s/v8s.fish"
        man1.install "man/v8s.1"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.7/v8s_linux_arm64.tar.gz"
      sha256 "0221cf820914f79583ece27644c9e0cc1167cb26ea693e17a16d805e9c1850d8"

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
