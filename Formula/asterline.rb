class Asterline < Formula
  desc "Local-first terminal workspace for coordinating coding agents"
  homepage "https://github.com/song0705/Asterline"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.0/asterline-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "1286ee15c9853928ebcb65d725ea507881e6af0d8dfef7540d9bfedbac9b1a3f"
    end

    on_intel do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.0/asterline-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "293721004294b09d54c8235314b8041ff3261e3bbf94095faca1b14f77ba59cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.0/asterline-v1.0.0-Linux-arm64.tar.gz"
      sha256 "1a79e123d89be05e3bed1dd96b77edd372d9446905129ea8fa1bf5a4e336d825"
    end

    on_intel do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.0/asterline-v1.0.0-Linux-x86_64.tar.gz"
      sha256 "aaa290c0830741d2564b408f36d0857b853dcbc1f1b6e4d6f0a09fc9642d1bfb"
    end
  end

  def install
    bin.install "asterline", "ast"
    doc.install "LICENSE"
  end

  test do
    assert_match "Usage: asterline", shell_output("#{bin}/asterline --help")
    assert_match "Usage: asterline", shell_output("#{bin}/ast --help")
  end
end
