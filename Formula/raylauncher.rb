class Raylauncher < Formula
  desc "Keyboard launcher for macOS: apps, commands, system actions, and a calculator"
  homepage "https://github.com/undo-git-pull/raylauncher"
  url "https://github.com/undo-git-pull/raylauncher/releases/download/v0.1.0/raylauncher-macos-universal.tar.gz"
  version "0.1.0"
  sha256 "7bafc92f1c491081276b2672cfcd6fb936496b346f58812eda2046058f78f1a5"
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
