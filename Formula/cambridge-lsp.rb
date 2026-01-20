class CambridgeLsp < Formula
  desc "Language Server Protocol implementation for Cambridge Pseudocode"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.1/cambridge-lsp-macos-intel"
      sha256 "616b6c932ec71c5b25bdb956479b1d85172321cc018b8568671b4368ccf0700c"

      def install
        bin.install "cambridge-lsp-macos-intel" => "cambridge-lsp"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.1/cambridge-lsp-macos-arm64"
      sha256 "ae2e64f92fdc6c03a22654cff4ffb136340e86009a81a25dc78011c5b90fbd66"

      def install
        bin.install "cambridge-lsp-macos-arm64" => "cambridge-lsp"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.1/cambridge-lsp-linux"
      sha256 "189322e7ecaa081d4eb355c05a9e76c302046b7e8dafcafad569c2ccc77012f4"

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
