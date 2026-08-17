class Asterline < Formula
  desc "Local-first terminal workspace for coordinating coding agents"
  homepage "https://github.com/song0705/Asterline"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.2/asterline-1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "04c4dd7ea8d667fc28ca69a4e5c91cc045d7a39f8434b494b1b4203672c3931d"
    end

    on_intel do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.2/asterline-1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "1e81bd348b597d19dff57a5e4c60706461df1962d36edd28a4fbed2a93536ba1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.2/asterline-v1.0.2-Linux-arm64.tar.gz"
      sha256 "d4407b63da29c8c098922445ac419cdee831a853aab0005a19a1d2554b007a86"
    end

    on_intel do
      url "https://github.com/song0705/Asterline/releases/download/v1.0.2/asterline-v1.0.2-Linux-x86_64.tar.gz"
      sha256 "4b0676c6f4341d329eaa24baee57b71b226548a85246a385eca6a95851360f2d"
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
