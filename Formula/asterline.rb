class Asterline < Formula
  desc "Local-first terminal workspace for coordinating coding agents"
  homepage "https://github.com/song0705/Asterline"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.3/asterline-1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "d435c14a30cb9d7a48987793745bb8ccd7a80a25fecacaf8e367cea375f816f7"
    end

    on_intel do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.3/asterline-1.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "37d341b3a32c591a2af1623d2d58ef706e506a990522015de038cb12c5331a89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.3/asterline-v1.0.3-Linux-arm64.tar.gz"
      sha256 "f105db4eb6eda217d26496037163713bbd6ccc90a97b36fc556763b05c7b0954"
    end

    on_intel do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.3/asterline-v1.0.3-Linux-x86_64.tar.gz"
      sha256 "4f8d89ecdfab9e7b9cb65705c51729485c972e9974bfee254883e91a87f7ff96"
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
