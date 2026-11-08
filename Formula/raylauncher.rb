class Raylauncher < Formula
  desc "Keyboard launcher for macOS: apps, commands, system actions, and a calculator"
  homepage "https://github.com/undo-git-pull/raylauncher"
  url "https://github.com/undo-git-pull/raylauncher/releases/download/v0.1.4/raylauncher-macos-universal.tar.gz"
  version "0.1.4"
  sha256 "3e9af06afa40547fb14ccc1de373d85bad53c382ee1dd556a5c62b0b37e897c7"
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
