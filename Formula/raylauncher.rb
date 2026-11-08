class Raylauncher < Formula
  desc "Keyboard launcher for macOS: apps, commands, system actions, and a calculator"
  homepage "https://github.com/undo-git-pull/raylauncher"
  url "https://github.com/undo-git-pull/raylauncher/releases/download/v0.1.3/raylauncher-macos-universal.tar.gz"
  version "0.1.3"
  sha256 "04b89b26f1cfd87e838ae2eb22633ee5acb758063bfd23a44d4cac4aba027f03"
  license "MIT"

  depends_on :macos

  def install
    bin.install "raylauncher"
  end

  def caveats
    <<~EOS
      Start raylauncher now and at every login:
        raylauncher install

      After `brew upgrade raylauncher`, run `raylauncher install` again to restart it.
      Before `brew uninstall raylauncher`, run `raylauncher uninstall`.

      Config lives in ~/.config/raylauncher. The default hotkey is Option+Space.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/raylauncher --version")
  end
end
