class Cambridge < Formula
  desc "Cambridge International AS & A Level Pseudocode Interpreter and LSP"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.8/cambridge-macos-intel"
      sha256 "768c3200221353b27e9876db582b6a235de631621a594d4e8fed92bd1dd1ab30"

      def install
        bin.install "cambridge-macos-intel" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.8/cambridge-macos-arm64"
      sha256 "76c05c2cc739d22d1366b291e9b122860935945afb57708d54efc5fdf54cad61"

      def install
        bin.install "cambridge-macos-arm64" => "cambridge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.8/cambridge-linux-amd64"
      sha256 "09031e1b5902638df7db38af98df08d64ec8ede65474cae20f0c62bd190a9518"

      def install
        bin.install "cambridge-linux-amd64" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.8/cambridge-linux-arm64"
      sha256 "a3948b48e2d95793c005871ff9dfc79d6ad9b32b71003f8a1bfb537b02bd536e"

      def install
        bin.install "cambridge-linux-arm64" => "cambridge"
      end
    end
  end

  test do
    assert_match "Cambridge Pseudocode", shell_output("#{bin}/cambridge version")
  end
end
