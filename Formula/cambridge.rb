class Cambridge < Formula
  desc "Cambridge International AS & A Level Pseudocode Interpreter and LSP"
  homepage "https://github.com/andrinoff/cambridge-lang"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.0/cambridge-macos-intel"
      sha256 "3e5b19bc87470da301615531454acb098cd189307770588f16aace02bf6aa7f4"

      def install
        bin.install "cambridge-macos-intel" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.0/cambridge-macos-arm64"
      sha256 "df455f911ffcb936c63856e276c95d8a11d77fbded1307ef65d3b172664d238c"

      def install
        bin.install "cambridge-macos-arm64" => "cambridge"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.0/cambridge-linux-amd64"
      sha256 "47aac296c0b887b2903214dcbd993242dbaf66f56a29c1899f6ec24331b95c9c"

      def install
        bin.install "cambridge-linux-amd64" => "cambridge"
      end
    end

    on_arm do
      url "https://github.com/andrinoff/cambridge-lang/releases/download/v0.1.0/cambridge-linux-arm64"
      sha256 "fe96947bcc00b48ece98bf42d3775c80cb8c06365ea0ce64df1ccfe64051e5fe"

      def install
        bin.install "cambridge-linux-arm64" => "cambridge"
      end
    end
  end

  test do
    assert_match "Cambridge Pseudocode", shell_output("#{bin}/cambridge version")
  end
end
