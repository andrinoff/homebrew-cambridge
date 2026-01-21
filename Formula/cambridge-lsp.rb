class CambridgeLsp < Formula
  desc "Language Server Protocol implementation for Cambridge Pseudocode"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.8/cambridge-lsp-macos-intel"
      sha256 "f4f54727df4a0e480f70254676aaaefc0cef2812e0fa7dd504b9a4c739002a37"

      def install
        bin.install "cambridge-lsp-macos-intel" => "cambridge-lsp"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.8/cambridge-lsp-macos-arm64"
      sha256 "39716bbdabf38ba8efb85b34fa8fb15371043c6aa6c4c372c46ec1e71757f25e"

      def install
        bin.install "cambridge-lsp-macos-arm64" => "cambridge-lsp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.8/cambridge-lsp-linux"
      sha256 "3c748ed516afc59c4f9a72c58f7a15cc3ea37e3a2d9b274f56de8a6b197ea8ee"

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
