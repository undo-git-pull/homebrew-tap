class Raylauncher < Formula
  desc "Keyboard launcher for macOS: apps, commands, system actions, and a calculator"
  homepage "https://github.com/undo-git-pull/raylauncher"
  url "https://github.com/undo-git-pull/raylauncher/releases/download/v0.1.2/raylauncher-macos-universal.tar.gz"
  version "0.1.2"
  sha256 "68ff90b20adaf01d0f4b6f12c0c033860d344f16af41e8a4ba1d6a749fb5ffb0"
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
