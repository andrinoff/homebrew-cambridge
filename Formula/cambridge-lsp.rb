class CambridgeLsp < Formula
  desc "Language Server Protocol implementation for Cambridge Pseudocode"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.2.0/cambridge-lsp-macos-intel"
      sha256 "61a1dc3cd502bfadaef75c248aa13b9bca8ea95906dea65448306760250b0d53"

      def install
        bin.install "cambridge-lsp-macos-intel" => "cambridge-lsp"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.2.0/cambridge-lsp-macos-arm64"
      sha256 "a00688539c64abda6e655fd00ef9290a16cac2836ae401549a0bd8002001ac64"

      def install
        bin.install "cambridge-lsp-macos-arm64" => "cambridge-lsp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.2.0/cambridge-lsp-linux"
      sha256 "3c5a7ceccebca50377306eac8160888b33351ff4ac3d8b4627766610d5ccdd5c"

      def install
        bin.install "cambridge-lsp-linux" => "cambridge-lsp"
      end
    end
  end

  test do
    # LSP doesn't have a version command, just check it exists
    assert_predicate bin/"cambridge-lsp", :exist?
  end
end
