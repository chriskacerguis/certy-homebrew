class Certy < Formula
  desc "CLI tool for certificate management"
  homepage "https://github.com/chriskacerguis/certy"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chriskacerguis/certy/releases/download/v1.6.0/certy-darwin-amd64"
      sha256 "cc45379adce479402af6bce48686050d1689b00fd1cc90acd54cb6a63936b052"

      def install
        bin.install "certy-darwin-amd64" => "certy"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/chriskacerguis/certy/releases/download/v1.6.0/certy-darwin-arm64"
      sha256 "ae576fb527229259a9ea51fa428e54a940fb62ffe4335f1d487e6945f57cf90c"

      def install
        bin.install "certy-darwin-arm64" => "certy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chriskacerguis/certy/releases/download/v1.6.0/certy-linux-amd64"
      sha256 "252b22d62bc1436735a3124641166f5bdbe0b4ff8de18c26039a807deb5aa904"

      def install
        bin.install "certy-linux-amd64" => "certy"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chriskacerguis/certy/releases/download/v1.6.0/certy-linux-arm64"
      sha256 "bd095c430d63ab7d3a0480c834f0c045fe6489dd4301b86b13e85c36188b3478"

      def install
        bin.install "certy-linux-arm64" => "certy"
      end
    end
  end

  test do
    system "#{bin}/certy", "--version"
  end
end
