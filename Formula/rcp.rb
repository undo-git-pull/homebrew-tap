class Rcp < Formula
  desc "Two-pane TUI file copier (local and SSH)"
  homepage "https://github.com/undo-git-pull/rcp"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/undo-git-pull/rcp/releases/download/v0.1.1/rcp-macos-universal.tar.gz"
    sha256 "6229f35c88a33baa1b89054f9b512fb700320bf2e1e81d279abdb137cafd5204"
  end

  on_linux do
    on_intel do
      url "https://github.com/undo-git-pull/rcp/releases/download/v0.1.1/rcp-linux-x86_64.tar.gz"
      sha256 "9d7d3f45d272a9294fb10e17ae9691df5b64993343eef3f9b4d3317975c4752e"
    end
    on_arm do
      url "https://github.com/undo-git-pull/rcp/releases/download/v0.1.1/rcp-linux-aarch64.tar.gz"
      sha256 "f4cb8ac19a6d301a7623519623587ddf63bb212bcfbbb70feb3fc76c14c37d84"
    end
  end

  def install
    bin.install "rcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rcp --version")
  end
end
