class Rcp < Formula
  desc "Two-pane TUI file copier (local and SSH)"
  homepage "https://github.com/undo-git-pull/rcp"
  version "0.1.2"
  license "MIT"

  on_macos do
    url "https://github.com/undo-git-pull/rcp/releases/download/v0.1.2/rcp-macos-universal.tar.gz"
    sha256 "e92818f4177bc135bb0092ea7a815db149698afefdbc30580839ac4b6f180bb1"
  end

  on_linux do
    on_intel do
      url "https://github.com/undo-git-pull/rcp/releases/download/v0.1.2/rcp-linux-x86_64.tar.gz"
      sha256 "eb92ee3ee667acdf89e11c5151a8a80bc74cf406a1afab8534abeb5333c115aa"
    end
    on_arm do
      url "https://github.com/undo-git-pull/rcp/releases/download/v0.1.2/rcp-linux-aarch64.tar.gz"
      sha256 "e17dd75b4b66cd8025fbf207f651d45b595da5fa7c4c15b5d4f039041b57a966"
    end
  end

  def install
    bin.install "rcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rcp --version")
  end
end
