class Cambridge < Formula
  desc "Cambridge International AS & A Level Pseudocode Interpreter and LSP"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.1/cambridge-macos-intel"
      sha256 "3929aa3cf554d91f8c9f4fcad26b59c9ddd9383a580306e72fb9ae7e8b312cb7"

      def install
        bin.install "cambridge-macos-intel" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.1/cambridge-macos-arm64"
      sha256 "5adacf9362f42f68b6d17c43dcbc9a1fc01bbd006a30bb80c5c61200b6ccc0b6"

      def install
        bin.install "cambridge-macos-arm64" => "cambridge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.1/cambridge-linux-amd64"
      sha256 "9590ae6a7c401d7996f84a836245691a2f7f64df2536cd9f5d83cda5b8f883f8"

      def install
        bin.install "cambridge-linux-amd64" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.1/cambridge-linux-arm64"
      sha256 "383b11a68fe2ede9c27c4e3fbd8134e1ef28ba646cca138eea83d51b14c060e2"

      def install
        bin.install "cambridge-linux-arm64" => "cambridge"
      end
    end
  end

  test do
    assert_match "Cambridge Pseudocode", shell_output("#{bin}/cambridge version")
  end
end
