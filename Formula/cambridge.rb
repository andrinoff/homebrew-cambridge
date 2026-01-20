class Cambridge < Formula
  desc "Cambridge International AS & A Level Pseudocode Interpreter and LSP"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.6/cambridge-macos-intel"
      sha256 "2d6e55e1396f2315e6266c97f4d4bf7588eb9570b426d1cd162f14f0518b583a"

      def install
        bin.install "cambridge-macos-intel" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.6/cambridge-macos-arm64"
      sha256 "b2b5d66d999ba944b0baa56d0c1a76a1434e0f783170cc6481368ab9bacb5e54"

      def install
        bin.install "cambridge-macos-arm64" => "cambridge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.6/cambridge-linux-amd64"
      sha256 "fc7175baddd4cbedf4322ec00c95e986598abc5612667780f656c68844e85254"

      def install
        bin.install "cambridge-linux-amd64" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.6/cambridge-linux-arm64"
      sha256 "0d70294c9b25c617cfecede30985325bb045f73a2fa445ef46544a3ac82d6377"

      def install
        bin.install "cambridge-linux-arm64" => "cambridge"
      end
    end
  end

  test do
    assert_match "Cambridge Pseudocode", shell_output("#{bin}/cambridge version")
  end
end
