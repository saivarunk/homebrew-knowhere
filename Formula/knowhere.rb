class Knowhere < Formula
  desc "A lightweight SQL engine for querying CSV and Parquet files via TUI"
  homepage "https://github.com/saivarunk/knowhere"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/saivarunk/knowhere/releases/download/v0.1.0/knowhere-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "577839b721c9d2d80403e405f959d0175c1a3dcedb191c721fd202a0d2ab9204"
    end

    on_intel do
      url "https://github.com/saivarunk/knowhere/releases/download/v0.1.0/knowhere-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "6875bc456e49aadd08869f46a50a1b6e7d4d25d378d0529647dfcb4eca24133e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/saivarunk/knowhere/releases/download/v0.1.0/knowhere-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c9ab7d0cbfab6a90119ca29c10bded38d4d47d0a0c6ad1462b0bac79a012687"
    end
  end

  def install
    bin.install "knowhere"
  end

  test do
    assert_match "knowhere", shell_output("#{bin}/knowhere --version")
  end
end
