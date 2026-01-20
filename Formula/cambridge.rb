class Cambridge < Formula
  desc "Cambridge International AS & A Level Pseudocode Interpreter and LSP"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.2/cambridge-macos-intel"
      sha256 "d3e2750e31906bc798ce52895e0d05ab59d0310770d7704de9a134d9095ba1c3"

      def install
        bin.install "cambridge-macos-intel" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.2/cambridge-macos-arm64"
      sha256 "b073429cbc13ed3553bdc78497c0a695d4571798e60b9eccec4f72d1ae5d45b8"

      def install
        bin.install "cambridge-macos-arm64" => "cambridge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.2/cambridge-linux-amd64"
      sha256 "3055b6a7b7f3107305381f914efb3e221e001ab254525635f842530dd4b12854"

      def install
        bin.install "cambridge-linux-amd64" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.2/cambridge-linux-arm64"
      sha256 "dfcb9c4204fd95e615722ed85ef76a1f0bc6708136340447afb852e86c4355ca"

      def install
        bin.install "cambridge-linux-arm64" => "cambridge"
      end
    end
  end

  test do
    assert_match "Cambridge Pseudocode", shell_output("#{bin}/cambridge version")
  end
end
