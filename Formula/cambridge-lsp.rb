class CambridgeLsp < Formula
  desc "Language Server Protocol implementation for Cambridge Pseudocode"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.0/cambridge-lsp-macos-intel"
      sha256 "e80df96723ed25051142b28cf5af14fb7efe5559dd1e0ae62566e97bdc117bfc"

      def install
        bin.install "cambridge-lsp-macos-intel" => "cambridge-lsp"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.0/cambridge-lsp-macos-arm64"
      sha256 "9ddadd9c4eef3666e6b32153337c8670d769c36691a5c40df338e18c6fd2afab"

      def install
        bin.install "cambridge-lsp-macos-arm64" => "cambridge-lsp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.0/cambridge-lsp-linux"
      sha256 "220cbb011ac173d888c39aaf9d02267564d875f78267176aa3554119f41574b0"

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
