class Cambridge < Formula
  desc "Cambridge International AS & A Level Pseudocode Interpreter and LSP"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.7/cambridge-macos-intel"
      sha256 "f92069ff65d417c283c829801bfd70d69e0312f4d0b0a5a481e8248b08e33d6d"

      def install
        bin.install "cambridge-macos-intel" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.7/cambridge-macos-arm64"
      sha256 "ee572eab4090bc5c35d7329b86829e4b23a352362d06417828e46b11a49921d7"

      def install
        bin.install "cambridge-macos-arm64" => "cambridge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.7/cambridge-linux-amd64"
      sha256 "1397cd10b9bd880d2ea9e5840be70872f85000a4c71e105f75c9ac5cea4e016c"

      def install
        bin.install "cambridge-linux-amd64" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.7/cambridge-linux-arm64"
      sha256 "9f75afa7cc2b830e56d347149b19890b59ec805f0ac6eec6a5b05b533169b1be"

      def install
        bin.install "cambridge-linux-arm64" => "cambridge"
      end
    end
  end

  test do
    assert_match "Cambridge Pseudocode", shell_output("#{bin}/cambridge version")
  end
end
