class CambridgeLsp < Formula
  desc "Language Server Protocol implementation for Cambridge Pseudocode"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.6/cambridge-lsp-macos-intel"
      sha256 "56529e32637849b762dcf8aa45f020061fbb37d6642538f9627df834799cb92a"

      def install
        bin.install "cambridge-lsp-macos-intel" => "cambridge-lsp"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.6/cambridge-lsp-macos-arm64"
      sha256 "a560c52e5a59ea17ad6682c65678b457a5f42b8703e1acda298c1c9726dec0ec"

      def install
        bin.install "cambridge-lsp-macos-arm64" => "cambridge-lsp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.6/cambridge-lsp-linux"
      sha256 "0fcb0329e24cbf00a325a8c39157e31fa42324bf18845803cb988728c0cbfb9b"

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
