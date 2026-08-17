class Asterline < Formula
  desc "Local-first terminal workspace for coordinating coding agents"
  homepage "https://github.com/song0705/Asterline"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.4/asterline-1.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "e80ee0002b495d36afdc7f4cc03cd121ad4ce01e644858fdb18252f76dbee04f"
    end

    on_intel do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.4/asterline-1.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "bb5cab85d54f8e5f20578b751ddabd8ca38c5b3310877c7b35254033b719af6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.4/asterline-v1.0.4-Linux-arm64.tar.gz"
      sha256 "f6df0075a9dcec683c68f24b00fd97a663e0ea7e3c613becb4e4db4ebc48fca1"
    end

    on_intel do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.4/asterline-v1.0.4-Linux-x86_64.tar.gz"
      sha256 "ff344d777fc1acc1ec484b2ca941a6f26ae2bfe854a37e3735ff06a6cdb63129"
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
