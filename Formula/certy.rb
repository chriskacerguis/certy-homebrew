class Certy < Formula
  desc "CLI tool for certificate management"
  homepage "https://github.com/chriskacerguis/certy"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chriskacerguis/certy/releases/download/v1.1.0/certy-darwin-amd64"
      sha256 "e673de0ef811e9214b95cab0b369b9d8ab03d388691e0d92ba1dc69df8d728f1"

      def install
        bin.install "certy-darwin-amd64" => "certy"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/chriskacerguis/certy/releases/download/v1.1.0/certy-darwin-arm64"
      sha256 "8e2414118e3afbb49a237df59b835cfc581b507394f663c0c31b40c5b16975d6"

      def install
        bin.install "certy-darwin-arm64" => "certy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chriskacerguis/certy/releases/download/v1.1.0/certy-linux-amd64"
      sha256 "80a89541d2f45e07e68bd9cbad5793306429bad9aaa712f60dfa83f2185657e2"

      def install
        bin.install "certy-linux-amd64" => "certy"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chriskacerguis/certy/releases/download/v1.1.0/certy-linux-arm64"
      sha256 "7de9e84518a2e102f62444a63c2e8407b1daf2869a6eb9ae80ab8d97cd7e54e3"

      def install
        bin.install "certy-linux-arm64" => "certy"
      end
    end
  end

  test do
    system "#{bin}/certy", "--version"
  end
end
