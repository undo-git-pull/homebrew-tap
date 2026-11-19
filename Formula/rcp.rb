class Rcp < Formula
  desc "Two-pane TUI file copier (local and SSH)"
  homepage "https://github.com/undo-git-pull/rcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/undo-git-pull/rcp/releases/download/v0.1.0/rcp-macos-universal.tar.gz"
    sha256 "9f401a99fbecb5fd7b06b701fd4ef532bd611151be632fff1ea7a3b1a0c0ec31"
  end

  on_linux do
    on_intel do
      url "https://github.com/undo-git-pull/rcp/releases/download/v0.1.0/rcp-linux-x86_64.tar.gz"
      sha256 "653e4112c31387407adbb5f39fbee3787fbe59e4fd35acd110371152afacde60"
    end
    on_arm do
      url "https://github.com/undo-git-pull/rcp/releases/download/v0.1.0/rcp-linux-aarch64.tar.gz"
      sha256 "3fc3bec480cfa784b4714f579a37e8ed6b8ded160dae3f0229b2f7459611bb8c"
    end
  end

  def install
    bin.install "rcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rcp --version")
  end
end
