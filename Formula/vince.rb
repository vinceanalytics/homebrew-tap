# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vince < Formula
  desc "The Cloud Native Web Analytics Platform"
  homepage "https://vinceanalytics.github.io"
  version "0.0.32"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.32/vince_darwin_arm64.tar.gz"
      sha256 "68bc4fdf1a497c0b451324c651fe2db586226dcda6a5c7a4aeea574c4b146f10"

      def install
        bin.install "vince"
        bash_completion.install "completions/vince/vince.bash" => "vince"
        zsh_completion.install "completions/vince/vince.zsh" => "_vince"
        fish_completion.install "completions/vince/vince.fish"
        man1.install "man/vince.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.32/vince_darwin_x86_64.tar.gz"
      sha256 "023d3a2595f1f23378ae782a607074dc7375f549eaa07cef014e316a49c664b9"

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
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.32/vince_linux_arm64.tar.gz"
      sha256 "ccc46b404c33bb54a20fbd18c951a82a37a579e6f413614787a2036a644bf2ea"

      def install
        bin.install "vince"
        bash_completion.install "completions/vince/vince.bash" => "vince"
        zsh_completion.install "completions/vince/vince.zsh" => "_vince"
        fish_completion.install "completions/vince/vince.fish"
        man1.install "man/vince.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.32/vince_linux_x86_64.tar.gz"
      sha256 "80ef13d5eb6c6ad6f50620b6ef2a7c29e4ba9a69e4287ee4fb0ccd35505e2fc2"

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
    system "#{bin}/vince --version"
  end
end
