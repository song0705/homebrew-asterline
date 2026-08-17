class Asterline < Formula
  desc "Local-first terminal workspace for coordinating coding agents"
  homepage "https://github.com/song0705/Asterline"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.1/asterline-1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "86a6695e1f35640861285321a179c237f52b2f99f285de931b16d21b6cd1b4ee"
    end

    on_intel do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.1/asterline-1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "43a958d25b3f269e59687559b78840efffed1e953e2c9cb0091bf73f9737df1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.1/asterline-v1.0.1-Linux-arm64.tar.gz"
      sha256 "022c8a60d8da9e5e5d0bdad6748cff7e864d7dda5eb526bdad56a5328f15b4f8"
    end

    on_intel do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.1/asterline-v1.0.1-Linux-x86_64.tar.gz"
      sha256 "1fe7732cc07cbbdd1cd054604f152da0253df71b4cee18b2c006d022a736c500"
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
