class CambridgeLsp < Formula
  desc "Language Server Protocol implementation for Cambridge Pseudocode"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.2/cambridge-lsp-macos-intel"
      sha256 "47032f64159757db8c0e9d53433d1a5c2b3da3a5f531e321f5c8431829d2b95c"

      def install
        bin.install "cambridge-lsp-macos-intel" => "cambridge-lsp"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.2/cambridge-lsp-macos-arm64"
      sha256 "18b11abfae3a194194bcf7fb7354bb01aefb1110356449b2436c57cd25e5bd9f"

      def install
        bin.install "cambridge-lsp-macos-arm64" => "cambridge-lsp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.2/cambridge-lsp-linux"
      sha256 "b016e098f1061f4c60f8fa7451dd14b36fb04fc9547374d27d4d9566288b9d32"

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
