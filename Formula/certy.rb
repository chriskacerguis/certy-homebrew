class Certy < Formula
  desc "CLI tool for certificate management"
  homepage "https://github.com/chriskacerguis/certy"
  version "v1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chriskacerguis/certy/releases/download/vv1.1.0/certy-darwin-amd64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

      def install
        bin.install "certy-darwin-amd64" => "certy"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/chriskacerguis/certy/releases/download/vv1.1.0/certy-darwin-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

      def install
        bin.install "certy-darwin-arm64" => "certy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chriskacerguis/certy/releases/download/vv1.1.0/certy-linux-amd64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

      def install
        bin.install "certy-linux-amd64" => "certy"
      end
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chriskacerguis/certy/releases/download/vv1.1.0/certy-linux-arm64"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

      def install
        bin.install "certy-linux-arm64" => "certy"
      end
    end
  end

  test do
    system "#{bin}/certy", "--version"
  end
end
