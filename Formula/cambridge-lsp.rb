class CambridgeLsp < Formula
  desc "Language Server Protocol implementation for Cambridge Pseudocode"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.7/cambridge-lsp-macos-intel"
      sha256 "62bb6f5ba5dd9882ff39f7a8a56c22aaeafbec56202673856c2953940c7b1974"

      def install
        bin.install "cambridge-lsp-macos-intel" => "cambridge-lsp"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.7/cambridge-lsp-macos-arm64"
      sha256 "0cbc0ee11da5b0db4fdc2bd73d041ca1e1a4572430c73d53ff1c8c69b5fb3acd"

      def install
        bin.install "cambridge-lsp-macos-arm64" => "cambridge-lsp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.7/cambridge-lsp-linux"
      sha256 "248d34c8fc1e6d53ee8c564337edc2f0fe8be4d1214cf47ef4e1623aef81e0b7"

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
