class Cambridge < Formula
  desc "Cambridge International AS & A Level Pseudocode Interpreter and LSP"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.2.0/cambridge-macos-intel"
      sha256 "99ac172c597efca5cb2e7af3e07031e2ef95d7099d8273429427b535068effbc"

      def install
        bin.install "cambridge-macos-intel" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.2.0/cambridge-macos-arm64"
      sha256 "7cab6b69066af3127cecf32b871299d0879692d8ea1cac2868cd45f0238a1502"

      def install
        bin.install "cambridge-macos-arm64" => "cambridge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.2.0/cambridge-linux-amd64"
      sha256 "e434b5236c706b31d24c507f7d6787ecf942d632b00bff9f24cc9bf6cbf5b103"

      def install
        bin.install "cambridge-linux-amd64" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.2.0/cambridge-linux-arm64"
      sha256 "ef7c5c647c8e4f5756f7e2f6b733a19e130c148b1971419bf17c820f5c16d4ef"

      def install
        bin.install "cambridge-linux-arm64" => "cambridge"
      end
    end
  end

  test do
    assert_match "Cambridge Pseudocode", shell_output("#{bin}/cambridge version")
  end
end
