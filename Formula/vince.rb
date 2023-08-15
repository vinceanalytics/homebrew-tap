# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vince < Formula
  desc "The Cloud Native Web Analytics Platform"
  homepage "https://vinceanalytics.github.io"
  version "0.0.21"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.21/vince_darwin_x86_64.tar.gz"
      sha256 "7cb18688eba88f9fd25aa83b82637a8b524bb780e27bce5fb5bdb20980a2ccc7"

      def install
        bin.install "vince"
        bash_completion.install "completions/vince/vince.bash" => "vince"
        zsh_completion.install "completions/vince/vince.zsh" => "_vince"
        fish_completion.install "completions/vince/vince.fish"
        man1.install "man/vince.1"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.21/vince_darwin_arm64.tar.gz"
      sha256 "669edfbacb1428f759f8747ac679a738e4a21edd26dc2f553a07b2c20c215f98"

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
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.21/vince_linux_arm64.tar.gz"
      sha256 "4cf1912d2329b6e616f64b97c4ce41c28899c49e83c0b601a67c413ea8fcdbba"

      def install
        bin.install "vince"
        bash_completion.install "completions/vince/vince.bash" => "vince"
        zsh_completion.install "completions/vince/vince.zsh" => "_vince"
        fish_completion.install "completions/vince/vince.fish"
        man1.install "man/vince.1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/vinceanalytics/vince/releases/download/v0.0.21/vince_linux_x86_64.tar.gz"
      sha256 "51e4297436fc047c3771743708cdabbfe3ce53e3efd4a6269475295505727833"

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
